//
// "Unofficial" header file for IDCT library on 9110
// (based on Swat sybols from SDK)
//
// by Marcus Groeber, 00-11-06
//

void ImsgMainEngine(struct IMSG_INPUT *imsgInput, 
                    struct IMSG_OUTPUT *imsgOutput);

struct IMSG_INPUT
{
  char    *inputFileName;
  char    *outputFileName;
  short   inputFiletype;
    #define IMSG_INPUT_TYPE_JPEG 1
    #define IMSG_INPUT_TYPE_RAW 2
  Boolean *cancelOperation;
  short   operationMode;
    #define IMSG_MODE_GET_INFO 1
    #define IMSG_MODE_CONVERT_TO_JPEG 2
  short   scalingMode;
  short   rotationAngle;
  short   targetSizeControl;
  short   Q_Value;
  long    targetSizeInBytes;
  short   colorInformation;
  short   outputDimX;
  short   outputDimY;
  short   grabTopLeftX;
  short   grabTopLeftY;
  short   grabWidth;
  short   grabHeight;
  short   inputDimX;
  short   inputDimY;
  short   nComp;
  short   samplingFactors[3][2];
};

struct IMSG_OUTPUT
{
  short status;
    #define IMSG_STATUS_OK              1
    #define IMSG_STATUS_READ_ERROR      5
    #define IMSG_STATUS_PARAMETER_ERROR 8
  short usedQValue;
  long resultedSize;
  short colorInformation;
  short resultDimX;
  short resultDimY;
  short nComp;
  short samplingFactors[3][2];
};
