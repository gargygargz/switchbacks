const mongoose = require('mongoose')

const hikeSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },
    location: {
      type: String,
      required: true
    },
    distance: {
      type: String,
      required: true
    },
    duration: {
      type: String,
      required: true
    },
    difficulty: {
      type: String,
      required: true
    },
    rating: {
      type: String,
      required: true
    },
    notes: {
      type: String,
      required: true
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User',
      required: true
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Hike', hikeSchema)
