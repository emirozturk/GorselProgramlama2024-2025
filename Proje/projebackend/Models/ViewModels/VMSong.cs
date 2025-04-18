using projebackend.Models;

public class VMSong
{
    public int id { get; set; }
    public string name { get; set; }
    public string genre { get; set; }
    public VMSong(song song){
        id = song.id;
        name = song.name;
        genre = song.genre;
    }
}