using System;
using System.Collections.Generic;

namespace projebackend.Models;

public partial class user
{
    public int id { get; set; }

    public string username { get; set; } = null!;

    public string password { get; set; } = null!;

    public string phone { get; set; } = null!;

    public virtual ICollection<user_song> user_songs { get; set; } = new List<user_song>();
}
