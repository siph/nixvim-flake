{
  inputs,
  buildGrammar,
}:
buildGrammar {
  language = "nu";
  # Is there a way to get the revision? Like `inputs.tree-sitter-nu.rev`?
  version = "0.0.0+???????";
  src = inputs.tree-sitter-nu;
}
