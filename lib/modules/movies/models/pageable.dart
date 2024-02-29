class Pageable<T> {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<T> results;

  Pageable({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.results,
  });

  factory Pageable.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJson) {
    return Pageable(
      page: json['page'],
      totalResults: json['total_results'],
      totalPages: json['total_pages'],
      results: (json['results'] as List).map((e) => fromJson(e)).toList(),
    );
  }
}