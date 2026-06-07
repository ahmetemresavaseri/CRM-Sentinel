from sqlalchemy import text
from db import SessionLocal
from models.schemas import User
from routes.users import get_password_hash

def seed_user():
    db = SessionLocal()
    try:
        # Check if user exists
        user = db.query(User).filter(User.username == "johndoe").first()
        if user:
            print("User 'johndoe' already exists.")
            return

        # Create user
        print("Creating user 'johndoe'...")
        hashed_password = get_password_hash("secret")
        new_user = User(
            username="johndoe",
            full_name="John Doe",
            email="johndoe@example.com",
            hashed_password=hashed_password,
            disabled=False,
            write_access=True
        )
        db.add(new_user)
        db.commit()
        print("User 'johndoe' created successfully.")
    except Exception as e:
        print(f"Error seeding user: {e}")
        db.rollback()
    finally:
        db.close()

if __name__ == "__main__":
    seed_user()
