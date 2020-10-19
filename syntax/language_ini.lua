local syntax = require "core.syntax"

-- TODO Subsections with . and :


syntax.add {
  files = { "%.ini$"},
  headers = "",
  patterns = {
    { pattern = { ";", "%c" },    	type = "comment"  },
    { pattern = { "%w;", "%c" },    	type = "comment"  },
    { pattern = { "#", "%c" },    	type = "comment"  },
    { pattern = { "%w#", "%c" },    	type = "comment"  },
    { pattern = { '"', '"' },       	type = "string"   },
    { pattern = "0x[%da-fA-F]+",      type = "number"   },
    { pattern = "-?%d+[%d%.]*f?",      type = "number"   },
    { pattern = "-?%.?%d+f?",          type = "number"   },
    { pattern = {"%[%w+%]", "[%c| ]"}, type = "keyword" }, 
    
    -- Subsections WIP
    --{ pattern = {"%[%w+", ":"}, type = "keyword" },
    --{ pattern = {":%w+", "[%c| ]"},  type = "keyword2" },
    --{ pattern = "[%w%s_]+=",      	type = "normal" },
    --{ pattern = "[:.]+=",      	type = "operator" },
  },
  symbols = {},
}
