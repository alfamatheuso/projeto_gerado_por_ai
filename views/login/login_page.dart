class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Icon(Icons.lock_outline, size: 80, color: Colors.deepPurpleAccent),
                SizedBox(height: 20),
                Text(
                  'Bem-vindo!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                SizedBox(height: 10),
                Text(
                  'Faça login para continuar',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(height: 40),
                _buildTextField(
                  hint: 'Email',
                  icon: Icons.email_outlined,
                  onChanged: controller.setEmail,
                ),
                SizedBox(height: 20),
                _buildTextField(
                  hint: 'Senha',
                  icon: Icons.lock_outline,
                  obscureText: true,
                  onChanged: controller.setPassword,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Esqueceu a senha?', style: TextStyle(color: Colors.deepPurpleAccent)),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => controller.login(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não tem uma conta?', style: TextStyle(color: Colors.black54)),
                    TextButton(
                      onPressed: () {},
                      child: Text('Cadastre-se', style: TextStyle(color: Colors.deepPurpleAccent)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hint, required IconData icon, bool obscureText = false, required Function(String) onChanged}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.deepPurpleAccent),
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: onChanged,
    );
  }
}