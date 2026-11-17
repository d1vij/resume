#import "@preview/basic-resume:0.2.9": *

#let name = "Divij Verma"
#let location = "Pune, India"
#let email = "divij@divijverma.com"
#let github = "github.com/d1vij"
#let linkedin = "linkedin.com/in/d1vij"
#let phone = "+91 8208105401"
#let personal-site = "divijverma.com"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#594c5b",
  font: "Untitled Serif",
  font-size: 10pt,
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */

== EDUCATION

#edu(
  institution: "Pimpri Chinchwad College of Engineering",
  location: "Pune, India",
  dates: dates-helper(start-date: "2026", end-date: "2030"),
  degree: "Bachelors of Technology, Electronics and Telecommunications Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

#edu(
  institution: "DAV Public School",
  location: "Aundh, Pune, India",
  dates: dates-helper(start-date: "2015", end-date: "2026"),
  degree: "High School Diploma",
)
#linebreak()
XII - 81.5% | X - 93.4%


== SKILLS
- *Languages*: C, C++, TypeScript, Python, SQL, Bash
- *Embedded & IoT*: Arduino Core, ESP32, PlatformIO, BLE, MQTT, NFC, I2C, SPI, UART
- *Web & Frameworks*: SvelteKit, React, Nuxt, Node.js, Bun, Vite, Hono, TailwindCSS, Cloudflare Workers
- *Databases*: MongoDB, SQLite, MySQL, PostgreSQL
- *Cloud & Infrastructure*: Docker, Linux, Cloudflare Tunnels
- *Developer Tools*: KiCad, Git, Yaak/Postman, Meson
- *Data Analysis*: Pandas, NumPy, Matplotlib, Seaborn


== PROJECTS

#project(
  name: "Wolf of the Sky",
  dates: "2026",
  url: "github.com/d1vij/WOTS",
)
#linebreak()
#text(
  [
    _C++, FreeRTOS, Arduino Core, ESP32, PlatformIO, KiCad, MPU6050, BMP280, NEO-7M_
  ],
  size: 9pt,
)

- Conceptualized and prototyped a two-student-led RC aircraft, owning the end-to-end design of all avionics and flight electronics.
- Authored KiCad schematics for the complete electronics system, covering the core avionics, telemetry controller, and wing-light circuitry.
- Architected an auxiliary ESP32 telemetry controller with concurrent FreeRTOS tasks, logging airspeed, pitch and roll, altitude, flight time, distance covered, GPS location, and ambient temperature to an onboard SD card.
- Designed a 555 timer-based astable circuit driving blinking wing navigation lights, independent of the main flight controller.

#project(
  name: "Proxi",
  dates: "2026",
  url: "github.com/d1vij/proxi",
)
#linebreak()
#text(
  [
    _C++, PlatformIO, Arduino Core, UNO R4 WiFi, ESP32, MQTT, BLE, NFC, TypeScript, HonoJS, SQLite_
  ],
  size: 9pt,
)

- Built a hardware pager for the Nexus'26 Hackathon that lets people discover each other in person, using BLE for proximity detection and NFC for tap-based interactions.
- Programmed the device firmware in C++ on UNO R4 WiFi and ESP32 boards, with the two boards communicating over BLE.
- Set up a hub-and-spoke backend where devices exchange messages through an Aedes MQTT broker, with a HonoJS REST API and SQLite storing device state.
- Developed a polling-based message pipeline and a cooperatively scheduled, non-blocking audio engine that plays sound while the single-core µC handles other tasks.

#project(
  name: "CBSE Wrapped",
  // Role is optional
  // role: "Maintainer",
  // Dates is optional
  dates: "2025",
  // URL is also optional
  url: "cbse-wrapped.divijverma.com",
)
#linebreak()
#text(
  [
    _TypeScript, Bun, SvelteKit, Python, Pandas, Pydantic, Cloudflare Workers_
  ],
  size: 9pt,
)

- Reverse-engineered the DigiLocker results API and admit-card generation algorithm to build an automated scraping and ETL pipeline that ingested, validated, and cleaned CBSE Class XII results at school-wide scale.
- Architected a type-safe polyglot monorepo with decoupled packages for data acquisition, Pydantic-validated data processing, and a SvelteKit frontend deployed on Cloudflare Workers' edge network.
- Engineered analytics algorithms for per-subject and aggregate percentile computation, rule-based academic stream inference from subject combinations, and stream-wise and school-wide ranking.


#project(
  name: "Spotify Data Analysis",
  dates: "2025",
  url: "sda.divijverma.com",
)
#linebreak()
#text(
  [
    _Python, Pandas, Matplotlib, Seaborn, Jupyter, uv_
  ],
  size: 9pt,
)

- Built an end-to-end data pipeline to ingest, clean, and visualize Spotify's Extended Streaming History, performing exploratory analysis on ~62K listening records spanning 5 years.
- Enriched listening data through dataset integration with a Kaggle artist dataset, mapping 1,800+ artists to countries and 800+ genres for geographic and genre-level insights.
- Developed a modular, reusable visualization library covering top-N rankings, daily activity trends, playtime KDE, and artist correlation analysis.
- Implemented an interactive per-artist explorer with fuzzy search, surfacing top tracks, listening streaks, track-length distributions, and album playcounts.

== EXTRACURRICULAR ACTIVITIES

#extracurriculars(
  activity: "Homelabbing",
  dates: "Present",
)
- Built a home server setup hosting media and storage services (Navidrome, WebDAV) via Docker.
- Secured remote access with Cloudflare Tunnels and Tailscale for encrypted connectivity over any network.
- Automated daily notes and file sync between Android (Termux) and Linux desktop using custom cron jobs.

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== WORK EXPERIENCE

#work(
  title: "Software Development Intern",
  location: "Pune, India",
  company: "DAV Public School, Aundh",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Jul 2025"),
)
- Designed and built a full-stack voting application for intra-school council elections, serving 1,000+ voters with enhanced security and transparency.
- Utilized Python data processing tools including Pandas, Matplotlib, and Seaborn to run post-election analytics and visual reporting. See #link("eva.divijverma.com").
