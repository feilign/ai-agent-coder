CREATE TABLE conversation (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE chat_history (
    id SERIAL PRIMARY KEY,
    conversation_id INT NOT NULL,
    message TEXT NOT NULL,
    user_type VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (conversation_id) REFERENCES conversation(id)
);

CREATE TABLE code_generation (
    id SERIAL PRIMARY KEY,
    conversation_id INT NOT NULL,
    code TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (conversation_id) REFERENCES conversation(id)
);

CREATE TABLE code_version (
    id SERIAL PRIMARY KEY,
    code_generation_id INT NOT NULL,
    version_number VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (code_generation_id) REFERENCES code_generation(id)
);

CREATE TABLE test_case (
    id SERIAL PRIMARY KEY,
    code_generation_id INT NOT NULL,
    test_case TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (code_generation_id) REFERENCES code_generation(id)
);

CREATE TABLE deployment (
    id SERIAL PRIMARY KEY,
    code_version_id INT NOT NULL,
    deployed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    FOREIGN KEY (code_version_id) REFERENCES code_version(id)
);

CREATE TABLE llm_model (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL,
    version VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE system_log (
    id SERIAL PRIMARY KEY,
    log_message TEXT NOT NULL,
    log_level VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);