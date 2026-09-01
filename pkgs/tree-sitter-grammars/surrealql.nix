{
  tree-sitter-surrealql,
  buildGrammar,
}: let
  inherit ((builtins.fromJSON (builtins.readFile ../../flake.lock)).nodes.tree-sitter-surrealql.locked) rev;
  version = "0.0.0+${rev}";
in
  buildGrammar {
    inherit version;
    language = "surrealql";
    src = tree-sitter-surrealql;
  }
