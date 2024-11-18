Here's a structured lesson plan to understand document ingestion and chunking in this codebase:

## Lesson Plan: Document Ingestion and Chunking

### 1. Overview & Core Concepts
- **Objective**: Understand the basic architecture and components
- **Topics**:
  - Document types supported (PDF, Markdown)
  - Chunking strategies
  - Factory pattern implementation
  - OCR integration

### 2. Core Classes (chunkers.py)
- **DocumentChunker** (Factory Class)
  - How it determines appropriate chunker type
  - Configuration parameters
  - Error handling
- **TextSplitChunker**
  - Markdown document handling
  - Word count and token calculations
- **ContextAwareChunker**
  - PDF document processing
  - Table handling
  - Document formatting

### 3. Pipeline Integration
- **Study pipeline.py**
  - How chunking fits into the overall pipeline
  - Data flow between components
  - Configuration management

### 4. Practical Examples
- **Review test_chunkers.py**
  - Test cases for different document types
  - OCR configuration testing
  - Error handling validation

### 5. Advanced Topics
- **Document Formats**
  - Input formats (from dataset_formats.md)
  - Internal processing formats
  - Output formats
- **OCR Integration**
  - Tesseract vs EasyOCR
  - Configuration options
  - Fallback mechanisms

### Hands-on Exercises:
1. Create a simple markdown document and process it through TextSplitChunker
2. Process a PDF document using ContextAwareChunker
3. Configure OCR options for PDF processing
4. Write tests for custom chunking scenarios

### Key Files to Reference:
- `/src/instructlab/sdg/utils/chunkers.py`
- `/src/instructlab/sdg/pipeline.py`
- `/tests/test_chunkers.py`
- `/docs/dataset_formats.md`
- `/docs/pipeline_config.md`

This structured approach will help you understand both the theoretical concepts and practical implementation details of document processing in this codebase.