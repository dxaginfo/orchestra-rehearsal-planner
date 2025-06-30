# Orchestra Rehearsal Planner

Web app for scheduling and managing band/orchestra rehearsals. Features include:
- Shared calendar and event scheduling
- Attendance and availability tracking
- Setlist management
- Group messaging/notifications
- Mobile responsive design

## Tech Stack
- Front-end: React.js, HTML, CSS
- Back-end: Node.js (Express)
- Database: PostgreSQL
- User authentication (JWT)
- Notifications (email + push)
- Deployment: Docker, GitHub Actions, Vercel or AWS

## Setup
1. Clone the repo
2. Install dependencies (server: `npm i`, client: `cd client && npm i`)
3. Configure environment variables (see `.env.example`)
4. Run database migrations (`npm run migrate`)
5. Start dev server: `npm run dev`

## Deployment
See `DEPLOYMENT.md` for cloud/CI/CD instructions.

## Security/Privacy
- Secure authentication
- Encrypted sensitive info

## Integration
Supports extension for music service APIs.