
type term = string

type rule = term * term list (* conjunctive form *)

type program = rule list

type query = term (* closed terms *)

let solve _program _query =
  (* Tabela de hash para armazenar os fatos deduzidos *)
  let hashTable = Hashtbl.create 32 in     
  (* Variável para acompanhar se houve mudança *)
  let changed = ref false in
  (* Função recursiva para encontrar o ponto fixo *)
  let rec findPoint () =
    (* Reinicializa a flag de mudança *)
    changed := false;
    (* Itera sobre todas as regras do programa *)
    List.iter (fun (head, body) ->
      (* Verifica se todos os fatos no corpo da regra são conhecidos *)
      if List.for_all (Hashtbl.mem hashTable) body then
        (* Se o fato cabeça ainda não foi deduzido, adiciona-o e marca mudança *)
        if not (Hashtbl.mem hashTable head) then begin
          Hashtbl.add hashTable head ();
          changed := true
        end
    ) _program;
    (* Se houve mudança, chama a função recursivamente *)
    if !changed = true then findPoint ()
  in
  (* Inicializa o processo de dedução *)
  findPoint ();

  (* Verifica se o fato query foi deduzido *)
  Hashtbl.mem hashTable _query