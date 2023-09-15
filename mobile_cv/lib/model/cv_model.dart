class CVModel {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String personalBio;

  CVModel({
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.personalBio,
  });

  CVModel copyWith({
    String? fullName,
    String? slackUsername,
    String? githubHandle,
    String? personalBio,
  }) {
    return CVModel(
      fullName: fullName ?? this.fullName,
      slackUsername: slackUsername ?? this.slackUsername,
      githubHandle: githubHandle ?? this.githubHandle,
      personalBio: personalBio ?? this.personalBio,
    );
  }

  @override
  String toString() {
    return "CVModel instance: $fullName, $slackUsername, $githubHandle, $personalBio";
  }
}
