import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/transcript/models/transcript.dart';

class TranscriptController extends BaseController {
  final transcript = Transcript(
    semesters: [
      Semester(
        title: "1st Semester",
        transcripts: [
          TranscriptElement(
            subject: "Basic Programming",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Calculus I",
            credit: 3,
            score: 2.6,
            grade: "C",
          ),
          TranscriptElement(
            subject: "Logic of Informatic",
            credit: 4,
            score: 2.1,
            grade: "D",
          ),
          TranscriptElement(
            subject: "Introduction of Technology Information",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
      Semester(
        title: "2nd Semester",
        transcripts: [
          TranscriptElement(
            subject: "Algorithm and Programming",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Calculus II",
            credit: 3,
            score: 3,
            grade: "B",
          ),
          TranscriptElement(
            subject: "Mathematic District",
            credit: 4,
            score: 3.5,
            grade: "A-",
          ),
          TranscriptElement(
            subject: "Web Programming",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
      Semester(
        title: "3rd Semester",
        transcripts: [
          TranscriptElement(
            subject: "Data Structure",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Object Oriented Programming",
            credit: 3,
            score: 3,
            grade: "B",
          ),
          TranscriptElement(
            subject: "Data Base",
            credit: 4,
            score: 3.5,
            grade: "A-",
          ),
          TranscriptElement(
            subject: "Statistic",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
      Semester(
        title: "4th Semester",
        transcripts: [
          TranscriptElement(
            subject: "Introduction of Software Engineering",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Artificial Intelligence",
            credit: 3,
            score: 3,
            grade: "B",
          ),
          TranscriptElement(
            subject: "Computer Graphic",
            credit: 4,
            score: 3.5,
            grade: "A-",
          ),
          TranscriptElement(
            subject: "Strategy of Algorithms",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
      Semester(
        title: "5st Semester",
        transcripts: [
          TranscriptElement(
            subject: "Professional Ethics",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Computer Security",
            credit: 3,
            score: 3,
            grade: "B",
          ),
          TranscriptElement(
            subject: "Data Mining",
            credit: 4,
            score: 3.5,
            grade: "A-",
          ),
          TranscriptElement(
            subject: "Internship",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
      Semester(
        title: "6st Semester",
        transcripts: [
          TranscriptElement(
            subject: "Machine Learning",
            credit: 4,
            score: 3.2,
            grade: "B+",
          ),
          TranscriptElement(
            subject: "Information Retrieval System",
            credit: 3,
            score: 3,
            grade: "B",
          ),
          TranscriptElement(
            subject: "Pattern Recognition",
            credit: 4,
            score: 3.5,
            grade: "A-",
          ),
          TranscriptElement(
            subject: "Mobile Programming",
            credit: 3,
            score: 2.8,
            grade: "B-",
          ),
        ],
        totalCredit: 14,
        avgScore: 3.2,
        avgGrade: "B+",
      ),
    ],
    totalCredit: 120,
    avgScore: 3.3,
    avgGrade: "B+"
  );
}
