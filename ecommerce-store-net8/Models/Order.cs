using System;
using System.Collections.Generic;

namespace ecommerce_store_net8.Models;

public partial class Order
{
    public int Id { get; set; }

    public string? UserId { get; set; }

    public DateTime? OrderDate { get; set; }

    public decimal? TotalAmount { get; set; }

    public string? PaymentStatus { get; set; }

    public string? ShippingStatus { get; set; }

    public virtual ICollection<OrderItem> OrderItems { get; set; } = new List<OrderItem>();

    public virtual ICollection<Payment> Payments { get; set; } = new List<Payment>();
}
