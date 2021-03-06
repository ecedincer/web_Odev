USE [Telefon]
GO
/****** Object:  Table [dbo].[Telefon]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TelefonMarkaID] [int] NOT NULL,
	[AlisID] [int] NOT NULL,
	[SatisID] [int] NOT NULL,
	[Hafıza] [int] NULL,
	[Renk] [nvarchar](50) NULL,
 CONSTRAINT [PK_Telefon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefon_Alis]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefon_Alis](
	[AlisID] [int] IDENTITY(1,1) NOT NULL,
	[TelefonID] [int] NOT NULL,
	[AlisFiyat] [money] NOT NULL,
 CONSTRAINT [PK_Telefon_Alis] PRIMARY KEY CLUSTERED 
(
	[AlisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefon_Marka_Model]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefon_Marka_Model](
	[TelefonMarkaID] [int] IDENTITY(1,1) NOT NULL,
	[TelefonMarkaAdi] [nvarchar](50) NOT NULL,
	[TelefonModelAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Telefon_Marka_Model] PRIMARY KEY CLUSTERED 
(
	[TelefonMarkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefon_Satis]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefon_Satis](
	[SatisID] [int] IDENTITY(1,1) NOT NULL,
	[TelefonID] [int] NOT NULL,
	[SatisFiyat] [money] NOT NULL,
 CONSTRAINT [PK_Telefon_Satis] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefonn]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TelefonMarkaID] [int] NOT NULL,
	[AlisID] [int] NULL,
	[SatisID] [int] NULL,
	[Hafiza] [int] NULL,
	[Renk] [nvarchar](50) NULL,
 CONSTRAINT [PK_Telefonn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Telefon] ON 

INSERT [dbo].[Telefon] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafıza], [Renk]) VALUES (1, 1, 1, 1, 128, N'Gold')
INSERT [dbo].[Telefon] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafıza], [Renk]) VALUES (3, 4, 2, 5, 256, N'Rose')
INSERT [dbo].[Telefon] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafıza], [Renk]) VALUES (4, 5, 5, 2, 128, N'Silver')
SET IDENTITY_INSERT [dbo].[Telefon] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefon_Alis] ON 

INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (1, 1, 30000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (2, 4, 15000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (3, 2, 25000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (4, 1, 30000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (5, 5, 20000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (6, 6, 17000.0000)
INSERT [dbo].[Telefon_Alis] ([AlisID], [TelefonID], [AlisFiyat]) VALUES (7, 2, 25000.0000)
SET IDENTITY_INSERT [dbo].[Telefon_Alis] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefon_Marka_Model] ON 

INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (1, N'Apple', N'13 Pro max')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (2, N'Apple', N'13 Pro')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (3, N'Apple', N'12 Pro max')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (4, N'Apple', N'12 Pro')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (5, N'Samsung', N'Note 10 Plus')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (6, N'Samsung', N'Note 10 Lite')
INSERT [dbo].[Telefon_Marka_Model] ([TelefonMarkaID], [TelefonMarkaAdi], [TelefonModelAdi]) VALUES (7, N'Samsung', N'S9')
SET IDENTITY_INSERT [dbo].[Telefon_Marka_Model] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefon_Satis] ON 

INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (1, 1, 35000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (2, 5, 20000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (3, 6, 25000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (4, 2, 32000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (5, 4, 25000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (6, 1, 35000.0000)
INSERT [dbo].[Telefon_Satis] ([SatisID], [TelefonID], [SatisFiyat]) VALUES (7, 6, 25000.0000)
SET IDENTITY_INSERT [dbo].[Telefon_Satis] OFF
GO
SET IDENTITY_INSERT [dbo].[Telefonn] ON 

INSERT [dbo].[Telefonn] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafiza], [Renk]) VALUES (1, 1, 1, 1, 128, N'Gold')
INSERT [dbo].[Telefonn] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafiza], [Renk]) VALUES (2, 4, 2, 5, 256, N'Rose')
INSERT [dbo].[Telefonn] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafiza], [Renk]) VALUES (3, 3, 1, 4, 256, N'Blue')
INSERT [dbo].[Telefonn] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafiza], [Renk]) VALUES (4, 5, 5, 2, 256, N'Gri')
INSERT [dbo].[Telefonn] ([ID], [TelefonMarkaID], [AlisID], [SatisID], [Hafiza], [Renk]) VALUES (5, 2, 4, 1, 300, N'Pink')
SET IDENTITY_INSERT [dbo].[Telefonn] OFF
GO
ALTER TABLE [dbo].[Telefon]  WITH CHECK ADD  CONSTRAINT [FK_Telefon_Telefon_Alis] FOREIGN KEY([AlisID])
REFERENCES [dbo].[Telefon_Alis] ([AlisID])
GO
ALTER TABLE [dbo].[Telefon] CHECK CONSTRAINT [FK_Telefon_Telefon_Alis]
GO
ALTER TABLE [dbo].[Telefon]  WITH CHECK ADD  CONSTRAINT [FK_Telefon_Telefon_Marka_Model] FOREIGN KEY([TelefonMarkaID])
REFERENCES [dbo].[Telefon_Marka_Model] ([TelefonMarkaID])
GO
ALTER TABLE [dbo].[Telefon] CHECK CONSTRAINT [FK_Telefon_Telefon_Marka_Model]
GO
ALTER TABLE [dbo].[Telefon]  WITH CHECK ADD  CONSTRAINT [FK_Telefon_Telefon_Satis] FOREIGN KEY([SatisID])
REFERENCES [dbo].[Telefon_Satis] ([SatisID])
GO
ALTER TABLE [dbo].[Telefon] CHECK CONSTRAINT [FK_Telefon_Telefon_Satis]
GO
/****** Object:  StoredProcedure [dbo].[TelefonAlis]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonAlis]
@TelefonID int,
@AlisFiyat money
as
begin 
	begin try
	begin tran TelefonAlis
	  insert into Telefon_Alis(
	  TelefonID,
	  AlisFiyat)
	  

	values(
	@TelefonID,
	@AlisFiyat)
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonAlis

  end try
  begin catch 
    rollback tran TelefonAlis
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonAlisSelect]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonAlisSelect]

as
begin 
	begin try
	begin tran TelefonAlisSelect

	Select * from Telefon_Alis

	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonAlisSelect

  end try
  begin catch 
    rollback tran TelefonAlisSelect
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonAlisUpdate]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonAlisUpdate]
@AlisID int,
@TelefonID int,
@AlisFiyat money
as
begin 
	begin try
	begin tran TelefonAlisUpdate

	Update Telefon_Alis Set  TelefonID=@TelefonID, AlisFiyat=@AlisFiyat
where AlisID=@AlisID
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonAlisUpdate

  end try
  begin catch 
    rollback tran TelefonAlisUpdate
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonMarkaModel]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonMarkaModel]

@TelfonMarkaAdi nvarchar(50),
@TelfonModelAdi nvarchar(50)
as
begin 
	begin try
	begin tran TelefonMarkaModel
	  insert into Telefon_Marka_Model(
	  TelefonMarkaAdi,
	  TelefonModelAdi)
	  

	values(	
	@TelfonMarkaAdi,
	@TelfonModelAdi		
		)
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonMarkaModel

  end try
  begin catch 
    rollback tran TelefonMarkaModel
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonMarkaModelSelect]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonMarkaModelSelect]

as
begin 
	begin try
	begin tran TelefonMarkaModelSelect

	select *from Telefon_Marka_Model
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonMarkaModelSelect

  end try
  begin catch 
    rollback tran TelefonMarkaModelSelect
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonMarkaModelUpdate]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonMarkaModelUpdate]
@TelefonMarkaID int,
@TelfonMarkaAdi nvarchar(50),
@TelfonModelAdi nvarchar(50)
as
begin 
	begin try
	begin tran TelefonMarkaModelUpdate

	Update Telefon_Marka_Model Set  TelefonMarkaAdi=@TelfonMarkaAdi, TelefonModelAdi=@TelfonModelAdi
where TelefonMarkaID=@TelefonMarkaID
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonMarkaModelUpdate

  end try
  begin catch 
    rollback tran TelefonMarkaModel
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonnGiris]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonnGiris]
@TelefonMarkaID int,
@AlisID int,
@SatisID int,
@Hafıza int,
@Renk nvarchar(50)
as
begin 
	begin try
	begin tran TelefonnGiris
	  insert into Telefonn(TelefonMarkaID
      ,AlisID
      ,SatisID
	  ,Hafiza
	  ,Renk)
	  

	values(@TelefonMarkaID,
	   @AlisID,
	   @SatisID,
	   @Hafıza,
	   @Renk)
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonnGiris

  end try
  begin catch 
    rollback tran TelefonGiris
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonnGirisSelect]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonnGirisSelect]

as
begin 
	begin try
	begin tran TelefonnGirisSelect


	   	Select * from Telefonn

	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonnGirisSelect

  end try
  begin catch 
    rollback tran TelefonnGirisSelect
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonnGirisUpdate]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonnGirisUpdate]
@ID int,
@TelefonMarkaID int,
@AlisID int,
@SatisID int,
@Hafıza int,
@Renk nvarchar(50)
as


begin 

	begin try
	begin tran TelefonnGirisUpdate	

	   	Update Telefonn Set  TelefonMarkaID=@TelefonMarkaID, AlisID=@AlisID, SatisID=@SatisID, Hafiza=@Hafıza, Renk=@Renk 
where ID=@ID
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonnGirisUpdate

  end try
  begin catch 
    rollback tran TelefonnGirisUpdate
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonSatis]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonSatis]
@TelefonID int,
@SatisFiyat money
as
begin 
	begin try
	begin tran TelefonSatis
	  insert into Telefon_Satis(
	  TelefonID,
	  SatisFiyat)
	  

	values(
	@TelefonID,
	@SatisFiyat)
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonSatis

  end try
  begin catch 
    rollback tran TelefonSatis
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonSatisSelect]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TelefonSatisSelect]

as
begin 
	begin try
	begin tran TelefonSatisSelect

	Select * from Telefon_Satis

	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonSatisSelect

  end try
  begin catch 
    rollback tran TelefonSatisSelect
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TelefonSatisUpdate]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TelefonSatisUpdate]
@SatisID int,
@TelefonID int,
@SatisFiyat money
as
begin 
	begin try
	begin tran TelefonSatisUpdate

	Update Telefon_Satis Set  TelefonID=@TelefonID, SatisFiyat=@SatisFiyat
where SatisID=@SatisID
	   print 'Ürün giriş işlemi gerçekleşti'
  commit tran TelefonSatisUpdate

  end try
  begin catch 
    rollback tran TelefonSatisUpdate
	print 'Ürün giriş işlemi gerçekleşmedi Başarısız. Lütfen Tekrar Deneyiniz.'

  end catch
end
GO
/****** Object:  StoredProcedure [dbo].[TumTablo]    Script Date: 3.03.2022 05:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TumTablo]
as
begin
select ID,TelefonMarkaAdi,TelefonModelAdi,a.AlisFiyat,s.SatisFiyat,Hafiza,Renk from Telefonn t
inner join Telefon_Alis a on t.AlisID=a.AlisID
inner join Telefon_Satis s on t.SatisID=s.SatisID
inner join Telefon_Marka_Model m on t.TelefonMarkaID=m.TelefonMarkaID

end
GO
