const nodemailer = require("nodemailer");

// cria o transporter uma vez
const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 465,
  secure: true,
  auth: {
    user: process.env.EMAIL_USER,
    pass: process.env.EMAIL_PASSWORD
  }
});

// função reutilizável
async function sendMail(to, subject, html) {
  try {
    await transporter.sendMail({
      from: `"QuizDS" <${process.env.EMAIL_USER}>`,
      to,
      subject,
      html
    });
    console.log("Email enviado com sucesso!");
  } catch (err) {
    console.error("Erro ao enviar email:", err);
    throw err;
  }
}

// exporta a função
module.exports = sendMail;
