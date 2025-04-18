using System;
using System.Collections.Generic;

namespace projebackend.Models;

public partial class song
{
    public int id { get; set; }

    public string name { get; set; } = null!;

    public string genre { get; set; } = null!;

    public virtual ICollection<user_song> user_songs { get; set; } = new List<user_song>();
}
