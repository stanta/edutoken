pragma solidity ^0.4.0;
import 'ERC223/token/ERC223/ERC223_token.sol';

contract edutoken is ERC223 {

    mapping (address => uint) Tokenholders;

    struct FeedBack {

        address sender;
        uint time;
        uint8 balls; // estimation of skills in 255 grades
        bytes[256] org; //organisation where study, work or service
        bytes32 code; //code of course study or work for codified  areas
        bytes[256] descr ; //description of study oe work
        bytes[256] text; //comment

    }

    FeedBack[] FeedBacksJournal;


    function addSimpleFeedback(uint8 _balls, bytes[256] _text) public onlyTokenholder {
        feedback = FeedBack(msk.sender,now, _balls, "","", _text);
        FeedBacksJournal.push(feedback);

    }

    function addExtendedFeedback(uint8 _balls,   bytes[256] _org, bytes32 _code,  bytes[256] _descr, bytes[256] _text) public onlyTokenholder {
        feedback = FeedBack(msk.sender,now, _balls, _org, _code, _descr, _text);
        FeedBacksJournal.push(feedback);

    }

    function profitShare ()  public onlyTokenholder // shares income
    {

    }


    function edutoken(){

        }
}
