import express from "express";
import { createDataset, getDataset } from "../controllers/datasetController.js";
import { protect } from "../middleware/authMiddleware.js";

const router = express.Router();

router.post("/", protect, createDataset);
router.get("/:id", protect, getDataset);

export default router;
