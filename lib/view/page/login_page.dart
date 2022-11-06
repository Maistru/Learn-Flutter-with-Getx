import 'package:belajar_getx/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  final LoginPageController loginC = Get.put(LoginPageController());
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    loginC.rememberme.value = false;
     if(box.read('tokin')!= null){
      loginC.emailC.text  =  box.read('tokin')['email'];
      loginC.passC.text  =  box.read('tokin')['password'];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN PAGE'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: loginC.emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              isDense: true,
              contentPadding: const EdgeInsets.all(15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(() => TextFormField(
                controller: loginC.passC,
                obscureText: loginC.isHidden.value,
                autocorrect: false,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  isDense: true,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => loginC.isHidden.toggle(),
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Obx(() => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: loginC.rememberme.value,
                title: const Text(
                  'Remember Me',
                  style: TextStyle(fontSize: 14),
                ),
                onChanged: (Value) {
                  loginC.rememberme.toggle();
                },
              )),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: const Text('LOGIN'),
          ),
        ],
      ),
    );
  }
}
