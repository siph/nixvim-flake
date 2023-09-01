{
  fetchFromGitHub,
  buildGrammar,
}:
buildGrammar {
  language = "nu";
  version = "0.0.0+786689b";
  src = fetchFromGitHub {
    owner = "nushell";
    repo = "tree-sitter-nu";
    rev = "786689b0562b9799ce53e824cb45a1a2a04dc673";
    hash = "sha256-ENyK0l2KhhNfyuXCz0faLwVHMJjJxlRCqitJkJ8fD+w=";
  };
}
