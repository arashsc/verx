%% Copyright (c) 2010-2011, Michael Santos <michael.santos@gmail.com>
%% All rights reserved.
%% 
%% Redistribution and use in source and binary forms, with or without
%% modification, are permitted provided that the following conditions
%% are met:
%% 
%% Redistributions of source code must retain the above copyright
%% notice, this list of conditions and the following disclaimer.
%% 
%% Redistributions in binary form must reproduce the above copyright
%% notice, this list of conditions and the following disclaimer in the
%% documentation and/or other materials provided with the distribution.
%% 
%% Neither the name of the author nor the names of its contributors
%% may be used to endorse or promote products derived from this software
%% without specific prior written permission.
%% 
%% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
%% "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
%% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
%% FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
%% COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
%% INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
%% BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
%% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
%% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
%% LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
%% ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
%% POSSIBILITY OF SUCH DAMAGE.

-define(VIR_SECURITY_LABEL_BUFLEN, 4096+1).
-define(VIR_SECURITY_DOI_BUFLEN, 256+1).
-define(VIR_SECURITY_MODEL_BUFLEN, 256+1).

-define(REMOTE_PROGRAM, 16#20008086).
-define(REMOTE_PROTOCOL_VERSION, 1).

-define(REMOTE_MESSAGE_HEADER_MAX, 24).
-define(REMOTE_MESSAGE_PAYLOAD_MAX, 262120).
-define(REMOTE_DOMAIN_ID_LIST_MAX, 16384).
-define(REMOTE_DOMAIN_NAME_LIST_MAX, 1024).
-define(REMOTE_CPUMAP_MAX, 256).
-define(REMOTE_VCPUINFO_MAX, 2048).
-define(REMOTE_CPUMAPS_MAX, 16384).
-define(REMOTE_MIGRATE_COOKIE_MAX, 256).
-define(REMOTE_NETWORK_NAME_LIST_MAX, 256).
-define(REMOTE_INTERFACE_NAME_LIST_MAX, 256).
-define(REMOTE_DEFINED_INTERFACE_NAME_LIST_MAX, 256).
-define(REMOTE_STORAGE_POOL_NAME_LIST_MAX, 256).
-define(REMOTE_STORAGE_VOL_NAME_LIST_MAX, 1024).
-define(REMOTE_NODE_DEVICE_NAME_LIST_MAX, 16384).
-define(REMOTE_NODE_DEVICE_CAPS_LIST_MAX, 16384).
-define(REMOTE_DOMAIN_SCHEDULER_PARAMETERS_MAX, 16).
-define(REMOTE_NODE_MAX_CELLS, 1024).
-define(REMOTE_AUTH_SASL_DATA_MAX, 65536).
-define(REMOTE_AUTH_TYPE_LIST_MAX, 20).
-define(REMOTE_DOMAIN_MEMORY_STATS_MAX, 1024).
-define(REMOTE_DOMAIN_BLOCK_PEEK_BUFFER_MAX, 65536).
-define(REMOTE_DOMAIN_MEMORY_PEEK_BUFFER_MAX, 65536).
-define(REMOTE_SECURITY_MODEL_MAX, ?VIR_SECURITY_MODEL_BUFLEN).
-define(REMOTE_SECURITY_LABEL_MAX, ?VIR_SECURITY_LABEL_BUFLEN).
-define(REMOTE_SECURITY_DOI_MAX, ?VIR_SECURITY_DOI_BUFLEN).
-define(REMOTE_SECRET_VALUE_MAX, 65536).
-define(REMOTE_SECRET_UUID_LIST_MAX, 16384).
-define(REMOTE_MESSAGE_HEADER_XDR_LEN, 4).

%% remote_procedure
-define(REMOTE_PROC_OPEN, 1).
-define(REMOTE_PROC_CLOSE, 2).
-define(REMOTE_PROC_GET_TYPE, 3).
-define(REMOTE_PROC_GET_VERSION, 4).
-define(REMOTE_PROC_GET_MAX_VCPUS, 5).
-define(REMOTE_PROC_NODE_GET_INFO, 6).
-define(REMOTE_PROC_GET_CAPABILITIES, 7).
-define(REMOTE_PROC_DOMAIN_ATTACH_DEVICE, 8).
-define(REMOTE_PROC_DOMAIN_CREATE, 9).
-define(REMOTE_PROC_DOMAIN_CREATE_XML, 10).

-define(REMOTE_PROC_DOMAIN_DEFINE_XML, 11).
-define(REMOTE_PROC_DOMAIN_DESTROY, 12).
-define(REMOTE_PROC_DOMAIN_DETACH_DEVICE, 13).
-define(REMOTE_PROC_DOMAIN_DUMP_XML, 14).
-define(REMOTE_PROC_DOMAIN_GET_AUTOSTART, 15).
-define(REMOTE_PROC_DOMAIN_GET_INFO, 16).
-define(REMOTE_PROC_DOMAIN_GET_MAX_MEMORY, 17).
-define(REMOTE_PROC_DOMAIN_GET_MAX_VCPUS, 18).
-define(REMOTE_PROC_DOMAIN_GET_OS_TYPE, 19).
-define(REMOTE_PROC_DOMAIN_GET_VCPUS, 20).

-define(REMOTE_PROC_LIST_DEFINED_DOMAINS, 21).
-define(REMOTE_PROC_DOMAIN_LOOKUP_BY_ID, 22).
-define(REMOTE_PROC_DOMAIN_LOOKUP_BY_NAME, 23).
-define(REMOTE_PROC_DOMAIN_LOOKUP_BY_UUID, 24).
-define(REMOTE_PROC_NUM_OF_DEFINED_DOMAINS, 25).
-define(REMOTE_PROC_DOMAIN_PIN_VCPU, 26).
-define(REMOTE_PROC_DOMAIN_REBOOT, 27).
-define(REMOTE_PROC_DOMAIN_RESUME, 28).
-define(REMOTE_PROC_DOMAIN_SET_AUTOSTART, 29).
-define(REMOTE_PROC_DOMAIN_SET_MAX_MEMORY, 30).

-define(REMOTE_PROC_DOMAIN_SET_MEMORY, 31).
-define(REMOTE_PROC_DOMAIN_SET_VCPUS, 32).
-define(REMOTE_PROC_DOMAIN_SHUTDOWN, 33).
-define(REMOTE_PROC_DOMAIN_SUSPEND, 34).
-define(REMOTE_PROC_DOMAIN_UNDEFINE, 35).
-define(REMOTE_PROC_LIST_DEFINED_NETWORKS, 36).
-define(REMOTE_PROC_LIST_DOMAINS, 37).
-define(REMOTE_PROC_LIST_NETWORKS, 38).
-define(REMOTE_PROC_NETWORK_CREATE, 39).
-define(REMOTE_PROC_NETWORK_CREATE_XML, 40).

-define(REMOTE_PROC_NETWORK_DEFINE_XML, 41).
-define(REMOTE_PROC_NETWORK_DESTROY, 42).
-define(REMOTE_PROC_NETWORK_DUMP_XML, 43).
-define(REMOTE_PROC_NETWORK_GET_AUTOSTART, 44).
-define(REMOTE_PROC_NETWORK_GET_BRIDGE_NAME, 45).
-define(REMOTE_PROC_NETWORK_LOOKUP_BY_NAME, 46).
-define(REMOTE_PROC_NETWORK_LOOKUP_BY_UUID, 47).
-define(REMOTE_PROC_NETWORK_SET_AUTOSTART, 48).
-define(REMOTE_PROC_NETWORK_UNDEFINE, 49).
-define(REMOTE_PROC_NUM_OF_DEFINED_NETWORKS, 50).

-define(REMOTE_PROC_NUM_OF_DOMAINS, 51).
-define(REMOTE_PROC_NUM_OF_NETWORKS, 52).
-define(REMOTE_PROC_DOMAIN_CORE_DUMP, 53).
-define(REMOTE_PROC_DOMAIN_RESTORE, 54).
-define(REMOTE_PROC_DOMAIN_SAVE, 55).
-define(REMOTE_PROC_DOMAIN_GET_SCHEDULER_TYPE, 56).
-define(REMOTE_PROC_DOMAIN_GET_SCHEDULER_PARAMETERS, 57).
-define(REMOTE_PROC_DOMAIN_SET_SCHEDULER_PARAMETERS, 58).
-define(REMOTE_PROC_GET_HOSTNAME, 59).
-define(REMOTE_PROC_SUPPORTS_FEATURE, 60).

-define(REMOTE_PROC_DOMAIN_MIGRATE_PREPARE, 61).
-define(REMOTE_PROC_DOMAIN_MIGRATE_PERFORM, 62).
-define(REMOTE_PROC_DOMAIN_MIGRATE_FINISH, 63).
-define(REMOTE_PROC_DOMAIN_BLOCK_STATS, 64).
-define(REMOTE_PROC_DOMAIN_INTERFACE_STATS, 65).
-define(REMOTE_PROC_AUTH_LIST, 66).
-define(REMOTE_PROC_AUTH_SASL_INIT, 67).
-define(REMOTE_PROC_AUTH_SASL_START, 68).
-define(REMOTE_PROC_AUTH_SASL_STEP, 69).
-define(REMOTE_PROC_AUTH_POLKIT, 70).

-define(REMOTE_PROC_NUM_OF_STORAGE_POOLS, 71).
-define(REMOTE_PROC_LIST_STORAGE_POOLS, 72).
-define(REMOTE_PROC_NUM_OF_DEFINED_STORAGE_POOLS, 73).
-define(REMOTE_PROC_LIST_DEFINED_STORAGE_POOLS, 74).
-define(REMOTE_PROC_FIND_STORAGE_POOL_SOURCES, 75).
-define(REMOTE_PROC_STORAGE_POOL_CREATE_XML, 76).
-define(REMOTE_PROC_STORAGE_POOL_DEFINE_XML, 77).
-define(REMOTE_PROC_STORAGE_POOL_CREATE, 78).
-define(REMOTE_PROC_STORAGE_POOL_BUILD, 79).
-define(REMOTE_PROC_STORAGE_POOL_DESTROY, 80).

-define(REMOTE_PROC_STORAGE_POOL_DELETE, 81).
-define(REMOTE_PROC_STORAGE_POOL_UNDEFINE, 82).
-define(REMOTE_PROC_STORAGE_POOL_REFRESH, 83).
-define(REMOTE_PROC_STORAGE_POOL_LOOKUP_BY_NAME, 84).
-define(REMOTE_PROC_STORAGE_POOL_LOOKUP_BY_UUID, 85).
-define(REMOTE_PROC_STORAGE_POOL_LOOKUP_BY_VOLUME, 86).
-define(REMOTE_PROC_STORAGE_POOL_GET_INFO, 87).
-define(REMOTE_PROC_STORAGE_POOL_DUMP_XML, 88).
-define(REMOTE_PROC_STORAGE_POOL_GET_AUTOSTART, 89).
-define(REMOTE_PROC_STORAGE_POOL_SET_AUTOSTART, 90).

-define(REMOTE_PROC_STORAGE_POOL_NUM_OF_VOLUMES, 91).
-define(REMOTE_PROC_STORAGE_POOL_LIST_VOLUMES, 92).
-define(REMOTE_PROC_STORAGE_VOL_CREATE_XML, 93).
-define(REMOTE_PROC_STORAGE_VOL_DELETE, 94).
-define(REMOTE_PROC_STORAGE_VOL_LOOKUP_BY_NAME, 95).
-define(REMOTE_PROC_STORAGE_VOL_LOOKUP_BY_KEY, 96).
-define(REMOTE_PROC_STORAGE_VOL_LOOKUP_BY_PATH, 97).
-define(REMOTE_PROC_STORAGE_VOL_GET_INFO, 98).
-define(REMOTE_PROC_STORAGE_VOL_DUMP_XML, 99).
-define(REMOTE_PROC_STORAGE_VOL_GET_PATH, 100).

-define(REMOTE_PROC_NODE_GET_CELLS_FREE_MEMORY, 101).
-define(REMOTE_PROC_NODE_GET_FREE_MEMORY, 102).
-define(REMOTE_PROC_DOMAIN_BLOCK_PEEK, 103).
-define(REMOTE_PROC_DOMAIN_MEMORY_PEEK, 104).
-define(REMOTE_PROC_DOMAIN_EVENTS_REGISTER, 105).
-define(REMOTE_PROC_DOMAIN_EVENTS_DEREGISTER, 106).
-define(REMOTE_PROC_DOMAIN_EVENT, 107).
-define(REMOTE_PROC_DOMAIN_MIGRATE_PREPARE2, 108).
-define(REMOTE_PROC_DOMAIN_MIGRATE_FINISH2, 109).
-define(REMOTE_PROC_GET_URI, 110).

-define(REMOTE_PROC_NODE_NUM_OF_DEVICES, 111).
-define(REMOTE_PROC_NODE_LIST_DEVICES, 112).
-define(REMOTE_PROC_NODE_DEVICE_LOOKUP_BY_NAME, 113).
-define(REMOTE_PROC_NODE_DEVICE_DUMP_XML, 114).
-define(REMOTE_PROC_NODE_DEVICE_GET_PARENT, 115).
-define(REMOTE_PROC_NODE_DEVICE_NUM_OF_CAPS, 116).
-define(REMOTE_PROC_NODE_DEVICE_LIST_CAPS, 117).
-define(REMOTE_PROC_NODE_DEVICE_DETTACH, 118).
-define(REMOTE_PROC_NODE_DEVICE_RE_ATTACH, 119).
-define(REMOTE_PROC_NODE_DEVICE_RESET, 120).

-define(REMOTE_PROC_DOMAIN_GET_SECURITY_LABEL, 121).
-define(REMOTE_PROC_NODE_GET_SECURITY_MODEL, 122).
-define(REMOTE_PROC_NODE_DEVICE_CREATE_XML, 123).
-define(REMOTE_PROC_NODE_DEVICE_DESTROY, 124).
-define(REMOTE_PROC_STORAGE_VOL_CREATE_XML_FROM, 125).
-define(REMOTE_PROC_NUM_OF_INTERFACES, 126).
-define(REMOTE_PROC_LIST_INTERFACES, 127).
-define(REMOTE_PROC_INTERFACE_LOOKUP_BY_NAME, 128).
-define(REMOTE_PROC_INTERFACE_LOOKUP_BY_MAC_STRING, 129).
-define(REMOTE_PROC_INTERFACE_GET_XML_DESC, 130).

-define(REMOTE_PROC_INTERFACE_DEFINE_XML, 131).
-define(REMOTE_PROC_INTERFACE_UNDEFINE, 132).
-define(REMOTE_PROC_INTERFACE_CREATE, 133).
-define(REMOTE_PROC_INTERFACE_DESTROY, 134).
-define(REMOTE_PROC_DOMAIN_XML_FROM_NATIVE, 135).
-define(REMOTE_PROC_DOMAIN_XML_TO_NATIVE, 136).
-define(REMOTE_PROC_NUM_OF_DEFINED_INTERFACES, 137).
-define(REMOTE_PROC_LIST_DEFINED_INTERFACES, 138).
-define(REMOTE_PROC_NUM_OF_SECRETS, 139).
-define(REMOTE_PROC_LIST_SECRETS, 140).

-define(REMOTE_PROC_SECRET_LOOKUP_BY_UUID, 141).
-define(REMOTE_PROC_SECRET_DEFINE_XML, 142).
-define(REMOTE_PROC_SECRET_GET_XML_DESC, 143).
-define(REMOTE_PROC_SECRET_SET_VALUE, 144).
-define(REMOTE_PROC_SECRET_GET_VALUE, 145).
-define(REMOTE_PROC_SECRET_UNDEFINE, 146).
-define(REMOTE_PROC_SECRET_LOOKUP_BY_USAGE, 147).
-define(REMOTE_PROC_DOMAIN_MIGRATE_PREPARE_TUNNEL, 148).
-define(REMOTE_PROC_IS_SECURE, 149).
-define(REMOTE_PROC_DOMAIN_IS_ACTIVE, 150).

-define(REMOTE_PROC_DOMAIN_IS_PERSISTENT, 151).
-define(REMOTE_PROC_NETWORK_IS_ACTIVE, 152).
-define(REMOTE_PROC_NETWORK_IS_PERSISTENT, 153).
-define(REMOTE_PROC_STORAGE_POOL_IS_ACTIVE, 154).
-define(REMOTE_PROC_STORAGE_POOL_IS_PERSISTENT, 155).
-define(REMOTE_PROC_INTERFACE_IS_ACTIVE, 156).
-define(REMOTE_PROC_GET_LIB_VERSION, 157).
-define(REMOTE_PROC_CPU_COMPARE, 158).
-define(REMOTE_PROC_DOMAIN_MEMORY_STATS, 159).

%% remote_message_type
-define(REMOTE_CALL, 0).
-define(REMOTE_REPLY, 1).
-define(REMOTE_MESSAGE, 2).
-define(REMOTE_STREAM, 3).

%% remote_message_status
-define(REMOTE_OK, 0).
-define(REMOTE_ERROR, 1).
-define(REMOTE_CONTINUE, 2).

%% Various limits which we will promptly ignore
-define(REMOTE_MESSAGE_MAX, 262144).
-define(REMOTE_STRING_MAX, 65536).


%% Message format:
%% total length of message in bytes
%% header
%% payload
-record(remote_message_header, {
        prog = ?REMOTE_PROGRAM,
        vers = ?REMOTE_PROTOCOL_VERSION,
        proc = ?REMOTE_PROC_OPEN,
        type = ?REMOTE_CALL,
        serial = 0,
        status = ?REMOTE_OK
    }).


-define(VIR_UUID_BUFLEN, 16).

-record(message, {
        len = 0,
        header = #remote_message_header{},
        payload = <<>>
    }).



-record(socket, {
        s,      % int fd
        sun     % struct sockaddr_un
    }).


