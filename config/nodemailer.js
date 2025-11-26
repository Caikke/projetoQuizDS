const nodemailer = require("nodemailer");

(async () => {
  try {
    const transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 465,
      secure: true,
      auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASSWORD
      }
    });

    await transporter.sendMail({
      from: `"Teste" <${process.env.EMAIL_USER}>`,
      to: process.env.EMAIL_USER,
      subject: "Teste Nodemailer",
      text: "Funcionou!"
    });

    console.log("Email enviado com sucesso!");
  } catch (err) {
    console.error("Erro:", err);
  }
})();
