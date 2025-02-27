USE master
GO
CREATE DATABASE PolyOEAsm
GO
USE PolyOEAsm
GO
CREATE TABLE Favorites(
	Id bigint NOT NULL IDENTITY,
	UserId varchar(20) NOT NULL,
	VideoId varchar(20) NOT NULL,
	LikeDate date NOT NULL,
	CONSTRAINT PK_Username PRIMARY KEY CLUSTERED (Id)
)
GO
CREATE TABLE Shares(
	Id bigint NOT NULL,
	UserId varchar(20) NOT NULL,
	VideoId varchar(20) NOT NULL,
	Emails varchar(250) NOT NULL,
	ShareDate date NOT NULL
	CONSTRAINT PK_Shares PRIMARY KEY CLUSTERED (Id)
)
GO
CREATE TABLE Users(
	Id varchar(20) NOT NULL,
	Password varchar(50) NOT NULL,
	Fullname nvarchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	Admin bit NOT NULL,
	CONSTRAINT PK_Users PRIMARY KEY CLUSTERED (Id)
)
GO
CREATE TABLE Videos(
	Id varchar(20) NOT NULL,
	Title nvarchar(1000) NOT NULL,
	Poster varchar(50) NOT NULL,
	Views int NOT NULL,
	Description nvarchar(max) NULL,
	Active bit NOT NULL,
	Code varchar(500) NOT NULL,
	CONSTRAINT PK_Videos PRIMARY KEY CLUSTERED (Id)
)
GO
SET IDENTITY_INSERT Favorites ON
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (1, 'admin', 'vd1', CAST(N'2021-02-02' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (2, 'duyplus', 'vd2', CAST(N'2021-03-12' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (3, 'duyplus', 'vd3', CAST(N'2021-05-15' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (4, 'admin', 'vd4', CAST(N'2022-06-20' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (5, 'admin', 'vd5', CAST(N'2021-07-22' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (6, 'duyplus', 'vd1', CAST(N'2021-07-05' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (7, 'hongdao', 'vd9', CAST(N'2021-04-11' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (8, 'binhloi', 'vd10', CAST(N'2021-05-13' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (9, 'tienthanh', 'vd12', CAST(N'2021-08-17' AS Date))
INSERT Favorites (Id, UserId, VideoId, LikeDate) VALUES (10, 'quanghung', 'vd21', CAST(N'2021-03-05' AS Date))
SET IDENTITY_INSERT Favorites OFF

INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (1, 'admin', 'vd1', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (2, 'admin', 'vd3', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (3, 'duyplus', 'vd3', 'duyplusdz@gmail.com', CAST(N'2022-02-06' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (4, 'duyplus', 'vd2', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (5, 'duyplus', 'vd6', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (6, 'duyplus', 'vd9', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (7, 'duyplus', 'vd20', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (8, 'duyplus', 'vd14', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))
INSERT Shares (Id, UserId, VideoId, Emails, ShareDate) VALUES (9, 'duyplus', 'vd17', 'duyplusdz@gmail.com', CAST(N'2022-02-10' AS Date))

INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('admin', '123', N'Văn Tèo', 'admin@gmail.com', 1)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('danhloi', '823806', N'Danh Lợi', 'danhloi@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('ducduy', '525090', N'Đức Duy', 'ducduy@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('duyplus', '123456', N'Hoàng Duy', 'duyplusdz@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('honglinh', '268252', N'Hồng Linh', 'honglinh@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('huyphi', '155530', N'Huy Phi', 'huyphi@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('trungkien', '781915', N'Trung Kiên', 'trungkien@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('hongdao', '962334', N'Hồng Đào', 'hongdao@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('lelai', '665844', N'Lê Lại', 'lelai@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('quanghung', '533240', N'Quang Hưng', 'quanghung@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('thanhthuy', '330543', N'Thanh Thuỳ', 'thanhthuy@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('hungthinh', '345983', N'Hưng Thịnh', 'hungthinh@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('daiphat', '301381', N'Đại Phát', 'daiphat@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('myduyen', '543397', N'Mỹ Duyên', 'myduyen@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('binhloi', '399458', N'Bình Lợi', 'binhloi@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('tienthanh', '469164', N'Tiến Thành', 'tienthanh@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('trunghung', '928937', N'Trung Hùng', 'trunghung@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('thuha', '147852', N'Thu Hà', 'thuha@gmail.com', 0)
INSERT Users (Id, Password, Fullname, Email, Admin) VALUES ('hoangkim', '364430', N'Hoàng Kim', 'hoangkim@gmail.com', 0)

INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd1', N'Iron Man', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd2', N'The Incredible Hulk', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd3', N'Iron Man 2', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd4', N'Thor', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd5', N'Captain America: The First Avenger', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd6', N'The Avengers', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd7', N'Iron Man 3', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd8', N'Thor: The Dark World', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd9', N'Captain America 2: The Winter Soldier', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd10', N'Guardians of The Galaxy', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd11', N'Avengers: Age of Ultron', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd12', N'Ant-Man', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd13', N'Captain America: Civil War', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd14', N'Doctor Strange', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd15', N'Guardians of The Galaxy 2', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd16', N'Spider-Man: Homecoming', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd17', N'Thor: Ragnarok', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd18', N'Black Panther', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd19', N'Avengers: Infinity War', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd20', N'Ant-Man and the Wasp', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd21', N'Captain Marvel', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd22', N'Avengers: Endgame', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd23', N'Spider-Man: Far From Home', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd24', N'Black Widow', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd25', N'Shang-Chi and the Legend of the Ten Rings', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd26', N'Eternals', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd27', N'Spider-Man: No Way Home', 'uploads/VD01.jpg', 123, N'Mô tả video', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd28', N'Pacific War', 'uploads/VD01.jpg', 2, N'Pacific War', 1, 'https://www.youtube.com/embed/Y44Wgsg-kLc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd29', N'Dragon Ball', 'uploads/VD02.jpg', 5, N'Dragon Ball', 1, 'https://www.youtube.com/embed/AaFkbVh7St8')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd30', N'Dragon ball GT', 'uploads/VD03.jpg', 3, N'Dragon ball GT', 1, 'https://www.youtube.com/embed/bKRfxXwtafc')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd31', N'Kymetsu No Yaiba', 'uploads/VD04.jpg', 3, N'Kymetsu No Yaiba', 1, 'https://www.youtube.com/embed/VQGCKyvzIM4')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd32', N'Dragon Ball Super', 'uploads/VD05.jpg', 463, N'Dragon ball Super', 1, 'https://www.youtube.com/embed/WiONylGn8Xw')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd33', N'Tây Du Ký 2013', 'uploads/VD06.jpg', 1, N'Tây Du Ký 2013', 0, 'https://www.youtube.com/embed/DSbqlb_NSNI')
INSERT Videos (Id, Title, Poster, Views, Description, Active, Code) VALUES ('vd34', N'One Piece', 'uploads/VD07.jpg', 999984, N'One Piece', 1, 'https://www.youtube.com/embed/1TiBoHQUj3I')
GO
-- Khoá phụ
ALTER TABLE Favorites WITH CHECK ADD CONSTRAINT FK_FAVORITES_USERS FOREIGN KEY(UserId)
REFERENCES Users (Id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Favorites CHECK CONSTRAINT FK_FAVORITES_USERS
GO
ALTER TABLE Favorites WITH CHECK ADD CONSTRAINT FK_FAVORITES_VIDEOS FOREIGN KEY(VideoId)
REFERENCES Videos (Id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Favorites CHECK CONSTRAINT FK_FAVORITES_VIDEOS
GO
ALTER TABLE Shares WITH CHECK ADD CONSTRAINT FK_SHARES_USERS FOREIGN KEY(UserId)
REFERENCES Users (Id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Shares CHECK CONSTRAINT FK_SHARES_USERS
GO
ALTER TABLE Shares WITH CHECK ADD CONSTRAINT FK_SHARES_VIDEOS FOREIGN KEY(VideoId)
REFERENCES Videos (Id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Shares CHECK CONSTRAINT FK_SHARES_VIDEOS
GO

