using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class Blog
{
    public int Id { get; set; }

    public string? Title { get; set; }

    public string? Slug { get; set; }

    public string? Content { get; set; }

    public string? AuthorName { get; set; }

    public DateTime? PublishedAt { get; set; }
}
