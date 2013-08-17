
////////////////////////////////////////////////////////////////////////////
//
// HTTP processing
//
////////////////////////////////////////////////////////////////////////////

#ifndef HTTP_H
#define HTTP_H

#include <stdint.h>

#include <set>

#include "context.h"
#include "manager.h"
#include "serial.h"
#include "protocol.h"

namespace analyser {
    
    // An HTTP context.
    class http_request_context : public context {
      public:
	
	// Constructor.
        http_request_context(manager& m) : context(m) {
	}

	// Constructor, describing flow address and parent pointer.
        http_request_context(manager& m, const flow& a, context_ptr p) : 
	context(m) { 
	    addr = a; parent = p; 
	}

	// Type.
	virtual std::string get_type() { return "http_request"; }

	typedef boost::shared_ptr<http_request_context> ptr;

	static context_ptr create(manager& m, const flow& f, context_ptr par) {
	    context_ptr cp = context_ptr(new http_request_context(m, f, par));
	    return cp;
	}

	// Given a flow address, returns the child context.
	static ptr get_or_create(context_ptr base, const flow& f) {
	    context_ptr cp = 
		context::get_or_create(base, f, http_request_context::create);
	    ptr sp = boost::dynamic_pointer_cast<http_request_context>(cp);
	    return sp;
	}

    };

    // An HTTP context.
    class http_response_context : public context {
      public:
	
	// Constructor.
        http_response_context(manager& m) : context(m) {
	}

	// Constructor, describing flow address and parent pointer.
        http_response_context(manager& m, const flow& a, context_ptr p) : 
	context(m) { 
	    addr = a; parent = p; 
	}

	// Type is "http".
	virtual std::string get_type() { return "http_response"; }

	typedef boost::shared_ptr<http_response_context> ptr;

	static context_ptr create(manager& m, const flow& f, context_ptr par) {
	    context_ptr cp = context_ptr(new http_response_context(m, f, par));
	    return cp;
	}

	// Given a flow address, returns the child context.
	static ptr get_or_create(context_ptr base, const flow& f) {
	    context_ptr cp = 
		context::get_or_create(base, f, http_response_context::create);
	    ptr sp = boost::dynamic_pointer_cast<http_response_context>(cp);
	    return sp;
	}

    };

    class http {

    public:

	// HTTP request processing function.
	static void process_request(manager&, context_ptr c, 
				    pdu_iter s, pdu_iter e);

	// HTTP response processing function.
	static void process_response(manager&, context_ptr c, pdu_iter s, 
				     pdu_iter e);

    };

};

#endif
