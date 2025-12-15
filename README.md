# SafeSurf – AI-Driven Parental Control & Online Safety Platform

SafeSurf is a cross-platform parental control system designed to **monitor, analyze, and restrict harmful online content** for children in real time.  
The platform combines **mobile applications, browser extensions, and AI-based NLP models** to provide fast, privacy-aware content filtering and activity monitoring.

---

## Problem Statement

Children are increasingly exposed to inappropriate and harmful online content.  
Existing solutions either rely solely on keyword blocking or lack real-time enforcement.

SafeSurf addresses this by:
- Using **AI-based content classification** instead of only static rules
- Enforcing **real-time monitoring and alerts**
- Maintaining **low latency** while preserving user privacy

---

## System Overview

SafeSurf consists of three major components:

1. **Flutter Mobile Application**
   - Cross-platform parental dashboard
   - Real-time alerts and browsing insights
   - Rule-based policy configuration

2. **Chromium Browser Extension**
   - Captures browsing events securely
   - Sends real-time activity data to backend services

3. **Backend & AI Services**
   - Real-time sync using Node.js and Socket.IO
   - ML inference APIs using Flask
   - Secure authentication and encrypted communication

---

## Architecture

- **Frontend**: Flutter (Android / iOS)
- **Extension**: JavaScript (Chromium APIs)
- **Backend**: Node.js (real-time services), Flask (ML & admin APIs)
- **AI/ML**: Hugging Face Transformer models
- **Databases**: SQLite (local cache), PostgreSQL (persistent storage)
- **Security**: JWT, OAuth2, end-to-end encryption

---

## AI / Machine Learning Approach

- Used **pretrained Transformer-based NLP models** (BERT family) from Hugging Face
- Fine-tuned models on labeled **Kaggle datasets**
- Implemented supervised text classification for harmful content detection
- Evaluated using accuracy, precision, recall, and F1-score

**Result:** Achieved ~93% classification accuracy on validation data.

---

## Key Features

- AI-based harmful content detection
- Real-time browsing activity monitoring
- Rule-based content policies
- Low-latency synchronization across devices
- Secure authentication and encrypted data transfer
- Admin dashboard with session history and analytics

---

## Performance & Impact

- Achieved **<150 ms** average sync latency across devices
- Improved monitoring efficiency by **~45%**
- Reduced false positives using hybrid rule-based + ML filtering

---

## Security Considerations

- Token-based authentication (JWT)
- OAuth2 for authorization flows
- Encrypted communication channels
- No raw browsing content stored unnecessarily (privacy-aware design)

---

## Limitations

- ML models rely on labeled datasets and may require periodic retraining
- Currently focused on English language content
- Designed as a **decision-support and enforcement tool**, not a diagnostic system

---

## Future Enhancements

- Multilingual NLP support
- On-device ML inference for reduced latency
- Active learning for continuous model improvement
- Advanced parental analytics and reporting

---

## Author

Kumar Vanshaj
