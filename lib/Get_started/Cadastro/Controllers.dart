import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

TextEditingController EmailCadastro = TextEditingController();
TextEditingController SenhaCadastro = TextEditingController();
TextEditingController RepitaSenhaCadastro = TextEditingController();
TextEditingController ChavePixCadastro = TextEditingController();
TextEditingController TipoChavePixCadastro = TextEditingController();
TextEditingController NomeCompleto = TextEditingController();
TextEditingController CpfCadastro = TextEditingController();

class AutenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future createNewuser() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: EmailCadastro.text.trim(),
          password: SenhaCadastro.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }
}
