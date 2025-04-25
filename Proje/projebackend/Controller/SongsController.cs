using System.Security.Claims;
using System.Transactions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using projebackend.Models;

[ApiController]
[Route("api/[controller]")]
public class SongsController : ControllerBase{
    GorselDbContext _context;
    public SongsController(GorselDbContext context)
    {
        _context = context;
    }
    [HttpGet]
    
    [Authorize]
    public IActionResult GetAllSongs(){
        /*
        var username = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
        if (username == "emirozturk")
        {
            return BadRequest(Response<string>.Fail("Sen Emir Öztürksün olmaz"));
        }

        var adam = _context.users.FirstOrDefault(x => x.username == username);
        */
        try
        {
            var songList = _context.songs.ToList();
            var vmsongList = songList.Select(x=>new VMSong(x)).ToList();
            return Ok(Response<List<VMSong>>.Success(vmsongList));
        }
        catch (Exception ex)
        {
            return BadRequest(Response<string>.Fail(ex.Message));
        }
    }
    [Authorize]
    [HttpGet("{id}")]
    public IActionResult GetSong(int id)
    {
        try
        {
            var song = _context.songs.FirstOrDefault(x => x.id == id);
            if (song == null)
                return NotFound(Response<string>.Fail("Song not found"));
            return Ok(Response<VMSong>.Success(new VMSong(song)));
        }
        catch (Exception ex)
        {
            return BadRequest(Response<string>.Fail(ex.Message));
        }
    }
    [Authorize]
    [HttpPost]
    public IActionResult AddSong([FromBody] VMSong song)
    {
        try
        {
            var foundSong = _context.songs.FirstOrDefault(x => x.name == song.name);
            if (foundSong != null)
            {
                return BadRequest(Response<string>.Fail("Song already exists"));
            }

            var newSong = new song()
            {
                name = song.name,
                genre = song.genre,
            };
            _context.songs.Add(newSong);
            _context.SaveChanges();
            return Ok(Response<VMSong>.Success(new VMSong(newSong)));
        }
        catch (Exception ex)
        {
            return BadRequest(Response<string>.Fail(ex.Message));
        }
    }
    [Authorize]
    [HttpPut]
    public IActionResult UpdateSong([FromBody] VMSong song)
    {
        try
        {
            var id = song.id;
            var foundSong = _context.songs.FirstOrDefault(x => x.id == id);
            if (foundSong == null)
                return NotFound(Response<string>.Fail("Song not found"));
            foundSong.name = song.name != null ? song.name : foundSong.name;
            foundSong.genre = song.genre != null ? song.genre : foundSong.genre;
            _context.songs.Update(foundSong);
            _context.SaveChanges();
            return Ok(Response<VMSong>.Success(new VMSong(foundSong)));
        }
        catch (Exception ex)
        {
            return BadRequest(Response<string>.Fail(ex.Message));
        }
    }
    [Authorize]
    [HttpDelete]
    [Route("{id}")]
    public IActionResult DeleteSong(int id)
    {
       
        try
        {
            var song = _context.songs.FirstOrDefault(x => x.id == id);
            if(song == null)
                return NotFound(Response<string>.Fail("Song not found"));
            _context.songs.Remove(song);
            _context.SaveChanges();
            return Ok(Response<string>.Success("Song deleted"));
        }
        catch (Exception ex)
        {
            return BadRequest(Response<string>.Fail(ex.Message));
        }
    }
}