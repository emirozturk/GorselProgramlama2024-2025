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
    public IActionResult GetAllSongs(){
        var songList = _context.songs.ToList();
        var vmsongList = songList.Select(x=>new VMSong(x)).ToList();
        return Ok(vmsongList);
        //BU NESNE RESPONSE NESNESİ OLARAK DÖNECEK 
    }
}