"""
Application Settings
Load configuration from environment variables
"""

from pydantic_settings import BaseSettings
from functools import lru_cache


class Settings(BaseSettings):
    """Application settings loaded from environment variables"""

    # Database Connection
    db_server: str = "localhost"
    db_port: int = 1433
    db_name: str = "ITI_Examination_System"
    db_user: str = "sa"
    db_password: str = ""
    db_encrypt: bool = True
    db_trust_server_certificate: bool = False

    # Application Settings
    app_name: str = "ITI Examination System"
    debug: bool = False
    api_prefix: str = "/api"

    # JWT Settings
    jwt_secret: str = "your-secret-key-change-in-production"
    jwt_algorithm: str = "HS256"
    jwt_expires_minutes: int = 1440  # 24 hours

    # CORS
    cors_origins: list[str] = ["http://localhost:5173", "http://localhost:3000"]

    # Server
    host: str = "0.0.0.0"
    port: int = 8000

    class Config:
        env_file = ".env"
        env_file_encoding = "utf-8"
        case_sensitive = False

    @property
    def database_url(self) -> str:
        """Generate ODBC connection string for Azure SQL"""
        return (
            f"DRIVER={{ODBC Driver 18 for SQL Server}};"
            f"SERVER={self.db_server},{self.db_port};"
            f"DATABASE={self.db_name};"
            f"UID={self.db_user};"
            f"PWD={self.db_password};"
            f"Encrypt={'yes' if self.db_encrypt else 'no'};"
            f"TrustServerCertificate={'yes' if self.db_trust_server_certificate else 'no'};"
        )


@lru_cache()
def get_settings() -> Settings:
    """Get cached settings instance"""
    return Settings()
