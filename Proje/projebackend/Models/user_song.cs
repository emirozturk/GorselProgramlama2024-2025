using System;
using System.Collections.Generic;

namespace projebackend.Models;

public partial class user_song
{
    public int id { get; set; }

    public int songId { get; set; }

    public int userId { get; set; }

    public virtual song song { get; set; } = null!;

    public virtual user user { get; set; } = null!;
}
