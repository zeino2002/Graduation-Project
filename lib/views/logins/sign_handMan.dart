import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/core/models/user_model.dart';
import 'package:khedma_tech/core/networking/firebase%20services/firebaase_services.dart';
import 'package:khedma_tech/views/logins/id.dart';
import 'package:khedma_tech/views/logins/log.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import '../widget/customTxtFild.dart';
import '../widget/custom_contianer.dart';
import '../widget/custom_txt_logs.dart';

class SignHandMan extends StatefulWidget {
//  final void Function(String, String, String, String) onSubmit;

  const SignHandMan({
    super.key,
  });

  @override
  State<SignHandMan> createState() => _SignHandManState();
}

class _SignHandManState extends State<SignHandMan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String _errorMessage = '';
  // bool _isButtonEnabled = true;
  // void _validateForm() {
  //   bool isValid = _formKey.currentState!.validate();
  //   setState(() {
  //     _isButtonEnabled = isValid;
  //   });
  // }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String phone = _phoneController.text;
      String email = _emailController.text.trim();
      String password = _passwordController.text;
      // widget.onSubmit(name, phone, email, password);

      try {
        var userCredential = await AppFireBaseHelper.createUser(
            email: email, password: password);
        await AppFireBaseHelper.addNewUser(
          user: UserModel(
            id: userCredential.user!.uid,
            name: name,
            email: email,
            image: '',
            address: '',
            phone: phone,
          ),
        );
        print('log in seccessfuly');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IdNum(),
          ),
        );
        // User signed up successfully
        // You can navigate to the profile page or perform other actions here
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          setState(() {
            _errorMessage = 'كلمة المرور ضعيفة جدًا.';
          });
        } else if (e.code == 'email-already-in-use') {
          setState(() {
            _errorMessage = 'الحساب موجود بالفعل لهذا البريد الإلكتروني.';
          });
        }
      } catch (e) {
        setState(() {
          _errorMessage = 'Error: $e';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      child: CustomTxtLogs(
                        txt: 'اهلا',
                        title: 'انشاء حساب جديد',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTxtFild(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل إسمك';
                        }
                        return null;
                      },
                      controller: _nameController,
                      txt: 'الاسم',
                    ),
                    CustomTxtFild(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل رقم الهاتف';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                      txt: 'رقم الهاتف',
                    ),
                    CustomTxtFild(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      //  validator: (p0) => null,
                      txt: 'البريد الالكتروني ',
                      prefixIcon: const SizedBox(
                        child: Center(
                          widthFactor: 0.0,
                          child: Text('(اختياري)  '),
                        ),
                      ),
                    ),
                    CustomTxtFild(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك أدخل الرقم السرى';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      prefixIcon: const Icon(Icons.visibility),
                      txt: 'كلمه السر',
                      obscureText: true,
                    ),
                    CustomTxtFild(
                      validator: (value) {
                        if (value != _passwordController.text) {
                          return 'كلمة المرور غير مطابقة';
                        }
                        return null;
                      },
                      controller: _confirmPasswordController,
                      prefixIcon: const Icon(Icons.visibility),
                      txt: 'تأكيد كلمه السر',
                      obscureText: true,
                    ),
                    if (_errorMessage.isNotEmpty)
                      Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomBtnLog(
                      title: 'التالى',
                      backgroundColor: kcolor1,
                      onPressed: _submitForm,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Log()));
                            },
                            child: const Text(
                              'سجل دخول',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: kcolor1),
                            )),
                        const Text(
                          '   عندك حساب؟',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
