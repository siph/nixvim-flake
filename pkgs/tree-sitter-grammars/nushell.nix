{
  inputs,
  buildGrammar,
}: let
  inherit ((builtins.fromJSON (builtins.readFile ../../flake.lock)).nodes.tree-sitter-nu.locked) rev;
  version = "0.0.0+${rev}";
in
  buildGrammar {
    inherit version;
    language = "nu";
    src = inputs.tree-sitter-nu;
  }
