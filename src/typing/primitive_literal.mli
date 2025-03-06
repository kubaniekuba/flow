(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

module Ast = Flow_ast

type syntactic_flags = {
  cond: Type.cond_context option;
  decl: Ast.Variable.kind option;
  as_const: bool;
  frozen: Type.frozen_kind;
}

val empty_syntactic_flags : syntactic_flags

val mk_syntactic_flags :
  ?cond:Type.cond_context ->
  ?decl:Ast.Variable.kind ->
  ?as_const:bool ->
  ?frozen:Type.frozen_kind ->
  unit ->
  syntactic_flags
