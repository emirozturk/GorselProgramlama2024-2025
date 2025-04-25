using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using projebackend.Models;

namespace projebackend.Controller;

[ApiController]
[Route("/api/[controller]")]
public class AuthController : ControllerBase
{
    private GorselDbContext _context;
    private readonly IConfiguration _configuration;

    public AuthController(IConfiguration configuration, GorselDbContext context)
    {
        _context = context;
        _configuration = configuration;
    }

    [HttpPost("login")]
    public IActionResult Login([FromBody] VMLogin login)
    {
        var result = _context.users.FirstOrDefault(x => x.username == login.Username);
        if (result != null)
        {
            if (result.password == login.Password)
            {
                var token = GenerateJwtToken(result);
                return Ok(Response<VMUser>.Success(new VMUser() { username = login.Username, token = token }));
            }
        }

        return Unauthorized();
    }

    private string GenerateJwtToken(user user)
    {
        var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));
        var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

        var claims = new[]
        {
            new Claim(JwtRegisteredClaimNames.Sub, user.username),
            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
        };

        var token = new JwtSecurityToken(
            issuer: _configuration["Jwt:Issuer"],
            audience: _configuration["Jwt:Audience"],
            claims: claims,
            expires: DateTime.Now.AddMinutes(30),
            signingCredentials: credentials);

        return new JwtSecurityTokenHandler().WriteToken(token);
    }
}