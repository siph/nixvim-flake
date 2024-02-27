{
  tree-sitter-surrealdb,
  buildGrammar,
}: let
  inherit ((builtins.fromJSON (builtins.readFile ../../flake.lock)).nodes.tree-sitter-surrealdb.locked) rev;
  version = "0.0.0+${rev}";
in
  buildGrammar {
    inherit version;
    language = "surrealdb";
    src = tree-sitter-surrealdb;
  }
