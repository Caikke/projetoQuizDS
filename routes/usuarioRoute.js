import express from "express";
import { registrar, login, pontuar } from "../controllers/usuarioController";

const router = express.router();

router.post("/regitrar", registrar);
router.post("/login",login);
router.post("/pontuar",pontuar);

export default router