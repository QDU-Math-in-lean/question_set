import Lake
open Lake DSL

package "question_set" where
  version := v!"0.1.0"
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`autoImplicit, false⟩
  ]

require "leanprover-community" / "mathlib" @ "git#v4.24.0-rc1"

lean_lib «QuestionSet» where
  -- add library configuration options here

@[default_target]
lean_exe "question_set" where
  root := `Main
