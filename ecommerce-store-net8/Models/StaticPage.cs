using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class StaticPage
{
    public int Id { get; set; }

    public string? Title { get; set; }

    public string? Slug { get; set; }

    public string? Content { get; set; }

    public DateTime? LastUpdated { get; set; }
}
