// ruleid: typescript.react.security.audit.react-missing-noopener
var Test1 = <a target='_blank' href="http://example.com/"></a>

// ruleid: typescript.react.security.audit.react-missing-noopener
var Test2 = <a target="_blank" rel='noreferrer' href="http://example.com"></a>

// ruleid: typescript.react.security.audit.react-missing-noopener
var Test3 = <a rel='noreferrer' target="_blank" href="http://example.com"></a>

// ruleid: typescript.react.security.audit.react-missing-noopener
var Test4 = <Link target="_blank" to="http://example.com/"></Link>

// ruleid: typescript.react.security.audit.react-missing-noopener
var Test5 = <Link target="_blank" to={dynamicLink}></Link>

// ok: typescript.react.security.audit.react-missing-noopener
var OkTest1 = <Link target="_blank" rel="noopener noreferrer" to="http://example.com"></Link>

// ok: typescript.react.security.audit.react-missing-noopener
var OkTest2 = <a target="_blank" rel="noopener" href="http://example.com"></a>

// ok: typescript.react.security.audit.react-missing-noopener
var OkTest3 = <a target="_blank" rel="noopener noreferrer" href="http://example.com"></a>

function TestComponent1() {
// ruleid: typescript.react.security.audit.react-missing-noopener
  let params = {target: '_blank', href: 'http://example.com/'};
  return React.createElement('a', params);
}

function TestComponent2() {
// ruleid: typescript.react.security.audit.react-missing-noopener
  return React.createElement('a', {target: '_blank', href: 'http://example.com/'});
}

function TestComponent3() {
// ruleid: typescript.react.security.audit.react-missing-noopener
  return React.createElement('a', {target: '_blank', href: 'http://example.com/', rel: 'noreferrer'});
}

function OkComponent1() {
// ok: typescript.react.security.audit.react-missing-noopener
  return React.createElement('a', {target: '_blank', href: 'http://example.com/', rel: "noopener noreferrer"});
}
