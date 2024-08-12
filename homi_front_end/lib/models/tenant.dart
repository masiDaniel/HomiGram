class Tenant {
  final int tenantId;
  final String tenantIdScan;
  final String tenantUserId;

  Tenant({
    required this.tenantId,
    required this.tenantIdScan,
    required this.tenantUserId,
  });
  factory Tenant.fromJSon(Map<String, dynamic> json) {
    return Tenant(
        tenantId: json['id'] ?? 0,
        tenantIdScan: json['tenant_id_scan'] ?? '',
        tenantUserId: json['user'] ?? 0);
  }
  Map<String, dynamic> tojson() {
    return {
      "id": tenantId,
      "tenant_id_scan": tenantIdScan,
      "user": tenantUserId
    };
  }
}
