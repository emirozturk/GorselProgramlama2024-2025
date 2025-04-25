namespace projebackend.Models;

public class VMLogin
{
    public string Username { get; set; } = null!;
    public string Password { get; set; } = null!;
    public VMLogin(){}

    public VMLogin(string username, string password)
    {
        this.Username = username;
        this.Password = password;
    }
}