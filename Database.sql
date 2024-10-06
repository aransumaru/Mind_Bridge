Create database Mind_Bridge
Go
Use Mind_Bridge
GO
CREATE TABLE [User] (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name NVARCHAR(255),
    gender NVARCHAR(50),
    date_of_birth DATE, -- Change this to VARCHAR(10)
    profile_image VARCHAR(255),
    role NVARCHAR(50)
);

CREATE TABLE Therapist (
    therapist_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE,
    specialization NVARCHAR(255),
    available_time NVARCHAR(255),
    certification NVARCHAR(255),
    rating DECIMAL(3, 2),
);

CREATE TABLE [Session] (
    session_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE, -- Xóa phiên nếu người dùng bị xóa
    therapist_id INT FOREIGN KEY REFERENCES Therapist(therapist_id) ON DELETE NO ACTION, -- Không làm gì khi nhà trị liệu bị xóa
    session_date DATE,
    session_time TIME,
    session_notes NVARCHAR(MAX),
    feedback NVARCHAR(MAX),
);



CREATE TABLE Resource (
    resource_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255),
    description NVARCHAR(MAX),
    content_type NVARCHAR(50),
    url NVARCHAR(255),
    tags NVARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
);

CREATE TABLE User_Resource (
    user_resource_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE,
    resource_id INT FOREIGN KEY REFERENCES Resource(resource_id) ON DELETE CASCADE,
    rating DECIMAL(3, 2)
);

CREATE TABLE Mood_Tracker (
    tracker_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE,
    mood_score INT CHECK (mood_score BETWEEN 1 AND 10),
    mood_description NVARCHAR(MAX),
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE,  -- Xóa phản hồi nếu người dùng bị xóa
    therapist_id INT FOREIGN KEY REFERENCES Therapist(therapist_id) ON DELETE NO ACTION,  -- Không làm gì khi nhà trị liệu bị xóa
    feedback_content NVARCHAR(MAX),
    rating DECIMAL(3, 2) CHECK (rating BETWEEN 1 AND 5),
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE Question (
    question_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE, -- Xóa câu hỏi nếu người dùng bị xóa
    question_content NVARCHAR(MAX) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
);

CREATE TABLE Answer (
    answer_id INT PRIMARY KEY IDENTITY(1,1),
    question_id INT FOREIGN KEY REFERENCES Question(question_id) ON DELETE CASCADE, -- Xóa câu trả lời nếu câu hỏi bị xóa
    therapist_id INT FOREIGN KEY REFERENCES Therapist(therapist_id) ON DELETE NO ACTION, -- Không xóa câu trả lời nếu nhà trị liệu bị xóa
    answer_content NVARCHAR(MAX) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
);

CREATE TABLE User_Scores (
    score_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT FOREIGN KEY REFERENCES [User](user_id) ON DELETE CASCADE, -- Xóa điểm nếu người dùng bị xóa
    score_value DECIMAL(5, 2), -- Giá trị điểm (ví dụ: 85.50)
);








