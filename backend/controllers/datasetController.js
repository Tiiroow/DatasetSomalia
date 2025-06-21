import Dataset from "../model/datasetModel.js";

export const createDataset = async (req, res) => {
    try {
        const userId = req.user.id;
        const { title, description, category, filePath, status } = req.body;
        const dataset = await Dataset.create({ title, description, category, filePath, status, userId });
        res.status(201).json({ dataset });
    } catch (error) {
        res.status(500).json({ error: error.message });
        console.log(error);
    }
};

export const getDataset = async (req, res) => {
    try {
        const datasets = await Dataset.find();
        res.status(200).json({ datasets });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

