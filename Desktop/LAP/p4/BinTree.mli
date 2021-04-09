(*Module interface for a Binary Tree*)

type tree (*abstract*)

(* Cria uma árvore com os elementos da lista, alinhados para a direita  *)
val make : int list -> tree

(* Determina o valor maior que ocorre numa árvore (função parcial) *)
val max : tree -> int

(* Carrega uma árvore a partir dum ficheiro de texto *)
val load : string -> tree

(* Escreve uma árvore num ficheiro de texto *)
val store : string -> tree -> unit

(* Mostra uma árvore na consola *)
val show : tree -> unit
