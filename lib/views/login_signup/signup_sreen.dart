import 'package:login_signup/utils/exports.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    customText(
                        txt: "Registrate",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    customText(
                        txt: "Por favor registrate para usar nuestra App",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 60,
                    ),
                    customText(
                        txt: "Ingresa por redes sociales",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: InkwellButtons(
                              image: Image.asset("image/img3.png")),
                          onTap: () {},
                        ),
                        const SizedBox(width: 37),
                        InkWell(
                          child: InkwellButtons(
                              image: Image.asset("image/img4.png")),
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    customText(
                        txt: "Ingresa por email",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(Lone: "Email", Htwo: "Email"),
                    const SizedBox(height: 20),
                    CustomTextField(Lone: "Password", Htwo: "Password"),
                    const SizedBox(height: 20),
                    Row(
                      children: [

                        Checkbox(
                          value: _value,
                          onChanged: (newValue) {
                            setState(() {
                              _value = newValue!;
                            });
                            const Text(
                              "Ver contraseña",
                              style: TextStyle(
                                  fontSize: 13, color: AppColors.kBlackColor),
                            );
                          },
                        ),
                        Text(
                          "Ver contraseña",
                          style: TextStyle(
                              fontSize: 13, color: AppColors.kBlackColor),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),
                    InkWell(
                      child: SignUpContainer(st: "Registrarme"),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      child: RichText(
                        text: RichTextSpan(
                            one: "Ya tengo cuenta ? ", two: "Iniciar sesion"),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                    ),
                    //Text("data"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
