using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GrpcService.Migrations
{
    /// <inheritdoc />
    public partial class CreateTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "GrpcData",
                columns: table => new
                {
                    PacketSeqNum = table.Column<int>(type: "integer", nullable: false),
                    RecordSeqNum = table.Column<int>(type: "integer", nullable: false),
                    PacketTimeStamp = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    RecordTimeStamp = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    Decimal1 = table.Column<decimal>(type: "numeric", nullable: false),
                    Decimal2 = table.Column<decimal>(type: "numeric", nullable: false),
                    Decimal3 = table.Column<decimal>(type: "numeric", nullable: false),
                    Decimal4 = table.Column<decimal>(type: "numeric", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GrpcData", x => new { x.PacketSeqNum, x.RecordSeqNum });
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "GrpcData");
        }
    }
}
