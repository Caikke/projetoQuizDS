const sgMail = require("@sendgrid/mail");

sgMail.setApiKey(process.env.SENDGRID_API_KEY);

async function sendMail(to, subject, html) {
  try {
    await sgMail.send({
      to,
      from: `"QuizDS" <${process.env.EMAIL_USER}>`, // precisa ser um remetente verificado no SendGrid
      subject,
      html,
      replyTo: process.env.EMAIL_USER
    });
    console.log("Email enviado com sucesso!");
  } catch (err) {
    console.error("Erro ao enviar email:", err);
    throw err;
  }
}

module.exports = sendMail;
