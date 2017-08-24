#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <math.h>
#include <iostream>

using namespace cv;

int main(int argc, char** argv)
{
    Mat img, gray;
	char *file = argv[1];
    if(!(img=imread(file, 1)).data) {
		std::cout << "failed\n";  
      	return -1;
	}

	std::cout << "gets here\n";
    cvtColor(img, gray, COLOR_BGR2GRAY);
	std::cout << "and here\n";

    // smooth it, otherwise a lot of false circles may be detected
    GaussianBlur( gray, gray, Size(9, 9), 2, 2 );
    vector<Vec3f> circles;
    HoughCircles(gray, circles, CV_HOUGH_GRADIENT,
                 2, gray.rows/4, 200, 100 );
    for( size_t i = 0; i < circles.size(); i++ )
    {
         Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
         int radius = cvRound(circles[i][2]);
         // draw the circle center
         circle( img, center, 3, Scalar(0,255,0), -1, 8, 0 );
         // draw the circle outline
         circle( img, center, radius, Scalar(0,0,255), 3, 8, 0 );
    }

	std::cout << "num circles: " << circles.size() << std::endl;
    
	namedWindow( "circles", WINDOW_NORMAL );
	resizeWindow( "circles", 600, 600 );
    imshow( "circles", img );
	waitKey(50000);
    return 0;
}
