import http from 'k6/http';

import { check, sleep } from 'k6';


export const options = {

  stages: [

    { duration: '30s', target: 20 },

    { duration: '1m30s', target: 10 },

    { duration: '20s', target: 5 },

  ],

};


export default function () {

  const res = http.get('http://kubernetes.docker.internal:8888');

  check(res, { 'status was 200': (r) => r.status == 200 });

  sleep(1);

}
