import mongoose from "mongoose";

const contactSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true
  },
  phone: {
    type: String,
  },
  dateOfBirth: {
    type: Date,
  },
  contactType: {
    type: String,
    enum: ['Primary', 'Secondary', 'Other'],
    required: true
  }
});

const contactModel = mongoose.model('contacts', contactSchema);

export default contactModel;
