CREATE TABLE [dbo].[GoodsRemains] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (50) NOT NULL,
    [storage] NVARCHAR (50) NOT NULL,
    [onDate]  DATE          NOT NULL,
    [price]   MONEY         NOT NULL,
    [amount]  INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([price]>(0)),
    CHECK ([amount]>(0))
);

