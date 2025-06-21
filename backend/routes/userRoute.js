import express from "express";
import { registerUser, loginUser, logoutUser, getAllUsers, deleteUser, updateUser } from "../controllers/authController.js";

const router = express.Router();

router.post("/register", registerUser);
router.post("/login", loginUser);
router.post("/logout", logoutUser);
router.get("/all", getAllUsers);
router.delete("/delete/:id", deleteUser);
router.put("/update/:id", updateUser);

export default router;