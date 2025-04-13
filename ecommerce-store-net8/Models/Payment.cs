using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class Payment
{
    public int Id { get; set; }

    public int? OrderId { get; set; }

    public DateTime? PaymentDate { get; set; }

    public string? PaymentMethod { get; set; }

    public string? PaymentReference { get; set; }

    public virtual Order? Order { get; set; }
}
