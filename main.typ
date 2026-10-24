#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
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
  font: "Merriweather",
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

== Education

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


== Skills
- *Languages*: C, C++, TypeScript, Python, SQL, Bash
- *Embedded & IoT*: Arduino Framework, ESP32, PlatformIO, BLE, MQTT, NFC
- *Web & Frameworks*: SvelteKit, React, Nuxt, Node.js, Bun, Vite, Hono, TailwindCSS, Cloudflare Workers
- *Databases*: MongoDB, SQLite, MySQL, PostgreSQL
- *Cloud & Infrastructure*: Docker, Linux, Cloudflare Tunnels
- *Developer Tools*: Git, KiCad, Yaak/Postman, Meson
- *Data Analysis*: Pandas, NumPy, Matplotlib, Seaborn


== Projects

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

- Reverse-engineered DigiLocker results API and admit card generation algorithms to programmatically fetch, scrape, clean, and analyze CBSE Class XII results for school-wide analysis.
- Architected a polyglot monorepo containing distinct packages for data scraping, data processing/cleaning, and a website.
- Engineered algorithms to compute per-subject/aggregate percentiles, automatically infer academic streams from subject combinations, and generate stream-wise and school-wide student rankings.

#project(
  name: "Proxi",
  dates: "2026",
  url: "github.com/d1vij/proxi",
)
#linebreak()
#text(
  [
    _C++, PlatformIO, Arduino Framework, UNO R4 WiFi, ESP32, MQTT, BLE, NFC, TypeScript, HonoJS, SQLite_
  ],
  size: 9pt,
)

- Conceptualized and built a modern hardware pager prototype for Nexus'26 Hackathon, enabling physical-first friend discovery and screen-free messaging.
- Engineered a Hub-and-Spoke architecture using an Aedes MQTT broker and HonoJS REST API to route real-time peer-to-peer messages and maintain centralized device states.

== Extracurricular Activities

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

== Work Experience

#work(
  title: "Software Development Intern",
  location: "Pune, India",
  company: "DAV Public School, Aundh",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Jul 2025"),
)
- Designed and built a full-stack voting application for intra-school council elections, serving 1,000+ voters with enhanced security and transparency.
- Utilized Python data processing tools including Pandas, Matplotlib, and Seaborn to run post-election analytics and visual reporting.
