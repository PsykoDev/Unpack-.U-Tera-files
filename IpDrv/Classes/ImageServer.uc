/*******************************************************************************
 * ImageServer generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ImageServer extends WebApplication;

event Query(WebRequest Request, WebResponse Response)
{
    local string Image;

    Image = Request.URI;
    // End:0x8A
    if(!Response.FileExists(Path $ Image))
    {
        Response.HTTPError(404);
        return;
    }
    // End:0x202
    else
    {
        // End:0xF0
        if((Right(Caps(Image), 4) == ".JPG") || Right(Caps(Image), 5) == ".JPEG")
        {
            Response.SendStandardHeaders("image/jpeg", true);
        }
        // End:0x202
        else
        {
            // End:0x138
            if(Right(Caps(Image), 4) == ".GIF")
            {
                Response.SendStandardHeaders("image/gif", true);
            }
            // End:0x202
            else
            {
                // End:0x180
                if(Right(Caps(Image), 4) == ".BMP")
                {
                    Response.SendStandardHeaders("image/bmp", true);
                }
                // End:0x202
                else
                {
                    // End:0x1C8
                    if(Right(Caps(Image), 4) == ".PNG")
                    {
                        Response.SendStandardHeaders("image/png", true);
                    }
                    // End:0x202
                    else
                    {
                        Response.SendStandardHeaders("application/octet-stream", true);
                    }
                }
            }
        }
    }
    Response.IncludeBinaryFile(Path $ Image);
    //return;    
}
