package cn.com.kingc.risk.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.google.gson.Gson;
import com.mkaq.core.util.HttpUtil;
import okhttp3.*;
import org.apache.commons.httpclient.NameValuePair;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * Created by admistrator on 2018-01-09.
 */
public class AsyncClient {
    public static void SynPostMethod(String serviceAddress, String[] argNames, String[] argValues, final ServiceListener serviceListener) {
        //创建okHttpClient对象
        OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();
        RequestBody body = null;
        if (argNames != null) {
            if (argNames.length > 0) {
                FormBody.Builder builder = new FormBody.Builder();
                for (int i = 0; i < argNames.length; i++) {
                    if (argValues[i] != null) {
                        if (i == 2) {
                            if (argValues[i] != null) {
                                Gson gson = new Gson();
                                argValues[i] = gson.toJson(argValues[i]);
                                argValues[i] = "[" + argValues[i] + "]";
                            }
                        }
                        builder.add(argNames[i], argValues[i] == null ? "" : argValues[i]);
                    }
                }
                body = builder.build();
            } else {
                body = new FormBody.Builder().build();
            }
        } else {
            body = new FormBody.Builder().build();
        }


        //创建一个Request
        final Request request = new Request.Builder()
                .url(serviceAddress)
                .post(body)
                .build();
        Call call = mOkHttpClient.newCall(request);
        call.enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                serviceListener.OnFailed(e.toString());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (response.isSuccessful()) {
                    serviceListener.OnSuccess(response.body().string());
                } else {
                    serviceListener.OnFailed(response.body().string());
                }

            }
        });
    }

    public static String DoPostMethod(String serviceAddress, String[] argNames, String[] argValues) {
        String result = null;
        try {
            //创建okHttpClient对象
            OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();
            RequestBody body = null;
            if (argNames != null) {
                if (argNames.length > 0) {
                    FormBody.Builder builder = new FormBody.Builder();
                    for (int i = 0; i < argNames.length; i++) {
                        if (argValues[i] != null) {
                            builder.add(argNames[i], argValues[i] == null ? "" : argValues[i]);
                        }
                    }
                    body = builder.build();
                } else {
                    body = new FormBody.Builder().build();
                }
            } else {
                body = new FormBody.Builder().build();
            }


            //创建一个Request
            final Request request = new Request.Builder()
                    .url(serviceAddress)
                    .post(body)
                    .build();
            Call call = mOkHttpClient.newCall(request);
            try {
                Response response = call.execute();
                //System.out.println("#######:"+response.toString());
                if (response.isSuccessful()) {
                    result = response.body().string();
                    return result;
                } else {
                    result = response.body().string();
                    return result;
                }
            } catch (Exception ex) {
                result = null;
                ex.printStackTrace();
            }
        } catch (Exception ex) {
            result = null;
            ex.printStackTrace();
        }

        return null;
    }

    /*public static String DoPostMethod(String serviceAddress, String[] argNames, Object[] argValues) {
        String result = null;
        try {
            //创建okHttpClient对象
            OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();
            RequestBody body = null;
            if (argNames != null) {
                if (argNames.length > 0) {
                    FormBody.Builder builder = new FormBody.Builder();
                    for (int i = 0; i < argNames.length; i++) {
                        if (argValues[i] != null) {
                            builder.add(argNames[i], argValues[i] == null ? "" : argValues[i]);
                        }
                    }
                    body = builder.build();
                } else {
                    body = new FormBody.Builder().build();
                }
            } else {
                body = new FormBody.Builder().build();
            }


            //创建一个Request
            final Request request = new Request.Builder()
                    .url(serviceAddress)
                    .post(body)
                    .build();
            Call call = mOkHttpClient.newCall(request);
            try {
                Response response = call.execute();
                //System.out.println("#######:"+response.toString());
                if (response.isSuccessful()) {
                    result = response.body().string();
                    return result;
                } else {
                    result = response.body().string();
                    return result;
                }
            } catch (Exception ex) {
                result = null;
                ex.printStackTrace();
            }
        } catch (Exception ex) {
            result = null;
            ex.printStackTrace();
        }

        return null;

    }
    */
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");

    public static String DoPostMethod(String serviceAddress, String json) {
        String result = null;
        try {
            //创建okHttpClient对象
            OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();
            // RequestBody body = RequestBody.create(JSON,json);
            RequestBody body = FormBody.create(JSON, json);
            //创建一个Request
            final Request request = new Request.Builder()
                    .url(serviceAddress)
                    .post(body)
                    .build();
            Call call = mOkHttpClient.newCall(request);
            try {
                Response response = call.execute();
                //System.out.println("#######:"+response.toString());
                if (response.isSuccessful()) {
                    result = response.body().string();
                    return result;
                } else {
                    result = response.body().string();
                    return result;
                }
            } catch (Exception ex) {
                result = null;
                ex.printStackTrace();
            }
        } catch (Exception ex) {
            result = null;
            ex.printStackTrace();
        }

        return null;

    }

    public static String DoPostMethod(String serviceAddress,  Map<String, String> param) {
        try {
           return HttpClientUtil.doPost(serviceAddress,param);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static String DoPostMethod(String serviceAddress, String mineCode, String token, List<?> list) {
        try {
            Map<String, String> params = new HashMap<>();
            params.put("mineCode", mineCode);
            params.put("token", token);
            JSONArray jsonArray = new JSONArray();
            jsonArray.addAll(list);
            params.put("reportContent", jsonArray.toString());
            return HttpClientUtil.doPost(serviceAddress, params);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

}
